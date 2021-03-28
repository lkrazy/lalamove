module Lalamove
  class LalaResponse
    attr_reader :body, :code, :headers

    def initialize(http_response)
      @body = JSON.parse(http_response, symbolize_names: true)
      @code = http_response.response.code
      @headers = http_response.headers
    end

    def success?
      @code.to_i >= 200 && @code.to_i < 300
    end
  end
end
