# frozen_string_literal: true

module TMDB::API
  class Client
    def initialize(request, api_key = nil)
      raise 'No request provided' unless request
      raise 'No API key provided' unless api_key || ENV['TMDB_API_KEY']

      @request = request
      @api_key = api_key || ENV['TMDB_API_KEY']
    end

    def call
      body = http(authenticated_url).send(@request.method).body
      @request.process_response(body)
    end

    def authenticated_url
      "#{@request.url}&api_key=#{@api_key}"
    end

    private

    def http(url, request_headers = {})
      @http ||= Faraday.new(url:, headers: request_headers) do |http|
        http.request  :json
        http.response :json, parser_options: { symbolize_names: true }
        http.adapter Faraday.default_adapter
      end
    end
  end
end
