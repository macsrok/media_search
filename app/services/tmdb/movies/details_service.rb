module TMDB::Movies
  class DetailsService
    def self.fetch(id)
      Rails.cache.fetch("movies/TMDB_ID:#{id}/Detail", expires_in: 12.hours) do
        request = TMDB::API::Requests::Details.new(id)
        TMDB::API::Client.new(request).call
      end
    end
  end
end
