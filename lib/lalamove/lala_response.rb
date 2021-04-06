module Lalamove
  class LalaResponse

    attr_accessor :body, :code, :headers

    def initialize(http_response)
      @code = http_response.response.code.to_i
      begin
        @body = JSON.parse(http_response.body, symbolize_names: true)
      rescue
        @body = nil
      end

      @headers = http_response.headers
    end

    def success?
      @code.to_i >= 200 && @code.to_i < 300
    end
  end
end
