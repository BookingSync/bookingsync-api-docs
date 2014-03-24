require 'json'

module JsonResponse
  def json_response(name)
    response = File.read("responses/#{name}.json")
    json = JSON.pretty_generate(JSON.parse(response))
    %Q{<pre><code class="language-javascript">#{json}</code></pre>}
  end
end
