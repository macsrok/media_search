# frozen_string_literal: true

module TMDB::API::Requests
  class Base
    def base_url
      'https://api.themoviedb.org'
    end

    def method
      'get'
    end
  end
end
