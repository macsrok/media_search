# frozen_string_literal: true

module TMDB::API::Requests::TV::Series
  class Details < ::TMDB::API::Requests::Base
    attr_reader :id, :page

    def initialize(id)
      @id = id
    end

    def url
      "#{base_url}/3/tv/#{@id}?"
    end

    def process_response(response)
      response_type.new(response)
    end

    def response_type
      TMDB::TV::Series
    end
  end
end
