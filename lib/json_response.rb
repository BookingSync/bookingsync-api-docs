require 'json'

module JsonResponse
  def json_response(name, resource_name)
    response = File.read("api_calls/#{name}.json")
    vars = {
      created_at: Time.now.utc,
      updated_at: Time.now.utc,
      published_at: Time.now.utc,
      start_at: days_from_now(7),
      end_at: days_from_now(14),
      start_date: days_from_now(7).strftime("%F"),
      end_date: days_from_now(256).strftime("%F"),
      beginning_of_month: Date.today.strftime("%Y-%m-01")
    }
    vars.each do |key, value|
      value = value.iso8601 if value.is_a?(Time)
      value = 'null' if value.nil?
      response = response.gsub(key.to_s.upcase, value.to_s)
    end

    sorted_response = sort_response(JSON.parse(response), resource_name)
    json = JSON.pretty_generate(sorted_response)
    %Q{<pre><code class="language-javascript">#{json}</code></pre>}
  end

  def days_from_now(days)
    Time.now.utc + 86400 * days
  end

  def sort_response(response, resource_name)
    sorted_not_nested = sort_not_nested(response)
    sorted_links = sort_element(response, "links")
    sorted_resource = response[resource_name] ? { resource_name => response[resource_name].map { |resource| sort_resource(resource) } } : response
    sorted_meta = sort_element(response, "meta")

    sorted_not_nested.merge(sorted_links).merge(sorted_resource).merge(sorted_meta)
  end

  def sort_not_nested(response)
    response.reject { |_, value| value.is_a?(Array) || value.is_a?(Hash) }.sort.to_h
  end

  def sort_resource(resource)
    resource_id = delete_from_collection(resource, "id")
    sorted_datetimes = sort_datetimes(resource)
    sorted_resource_links = sort_element(resource, "links", true)
    sorted_attributes = resource.sort.to_h

    resource_id.merge(sorted_attributes).merge(sorted_datetimes).merge(sorted_resource_links)
  end

  def sort_datetimes(resource)
    datetimes = resource.select { |key| key.ends_with?("_at") || key.ends_with?("_date") }
    datetimes.each_key { |key| resource.delete(key) }

    sorted_primary_datetimes = {}
    %w(
      created_at updated_at start_at start_date end_at end_date rejected_at canceled_at
    ).each do |attribute|
      sorted_primary_datetimes.merge!(delete_from_collection(datetimes, attribute))
    end

    sorted_additional_datetimes = datetimes.sort.to_h
    sorted_primary_datetimes.merge(sorted_additional_datetimes)
  end

  def delete_from_collection(collection, element)
    collection.keys.include?(element) ? { element => collection.delete(element) } : {}
  end

  def sort_element(collection, element, delete = false)
    hash = delete ? collection.delete(element) : collection[element]
    hash ? { element => hash.sort.to_h } : {}
  end

  def ends_with?(suffix)
    suffix.respond_to?(:to_str) && self[-suffix.length, suffix.length] == suffix
  end
end
