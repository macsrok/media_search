# frozen_string_literal: true

module TMDB::API::Requests::TV::Series
  class Search < ::TMDB::API::Requests::BaseSearch
    def url
      "#{base_url}/3/search/tv?query=#{@query}&page=#{@page}"
    end

    def process_response(response)
      response[:results].map { |object| response_type.new(object) }
    end

    def response_type
      TMDB::TV::Series
    end
  end
end
