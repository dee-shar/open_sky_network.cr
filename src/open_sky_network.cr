require "json"
require "http/client"

class OpenSkyNetwork
  API_PATH = "api"
  def initialize
    @headers = HTTP::Headers{
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://opensky-network.org")
    @http_client = HTTP::Client.new(uri)
  end

  def get_all_states() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/states/all", headers: @headers).body)
  end

  def get_own_states() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/states/own", headers: @headers).body)
  end
end
