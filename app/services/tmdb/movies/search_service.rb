module TMDB::Movies
  class SearchService
    def self.search(query, page = 1)
      Rails.cache.fetch("movies/search/#{query}/#{page}", expires_in: 12.hours) do
        request = TMDB::API::Requests::Movies::Search.new(query, page)
        TMDB::API::Client.new(request).call
      end
    end
  end
end
