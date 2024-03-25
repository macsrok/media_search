# frozen_string_literal: true

module TMDB::API::Requests::Movies
  class Details < TMDB::API::Base
    attr_reader :id, :page

    def initialize(id)
      @id = id
    end

    def url
      "#{base_url}/3/movie/#{@id}?"
    end

    def process_response(response)
      response_type.new(response)
    end

    def response_type
      TMDB::Movie
    end
  end
end
