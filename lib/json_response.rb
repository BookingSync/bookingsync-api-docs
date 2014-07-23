require 'json'

module JsonResponse
  def json_response(name)
    response = File.read("responses/#{name}.json")
    vars = {
      created_at: Time.now.utc,
      updated_at: Time.now.utc,
      start_at: days_from_now(7),
      end_at: days_from_now(14)
    }
    vars.each do |key, value|
      value = value.iso8601 if value.is_a?(Time)
      value = 'null' if value.nil?
      response = response.gsub(key.to_s.upcase, value.to_s)
    end

    json = JSON.pretty_generate(JSON.parse(response))
    %Q{<pre><code class="language-javascript">#{json}</code></pre>}
  end

  def days_from_now(days)
    Time.now.utc + 86400 * days
  end
end
