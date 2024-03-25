# frozen_string_literal: true

module TMDB::API::Requests::Movies
  class Search < TMDB::API::Requests::BaseSearch
    def url
      "#{base_url}/3/search/movie?query=#{@query}&page=#{@page}"
    end

    def process_response(response)
      response[:results].map { |object| response_type.new(object) }
    end

    def response_type
      TMDB::Movie
    end
  end
end
