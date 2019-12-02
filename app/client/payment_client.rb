class FetchClient
  # //http://www.example.com
  def self.get(url)
    url = URI.parse(url)
    connection = Faraday.new(url: "#{url.scheme}://#{url.host}")
    connection.get(url.path).body
  end
end
