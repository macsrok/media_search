module TMDB::TV
  class DetailsService
    def self.fetch(id)
      Rails.cache.fetch("tv/series/TMDB_ID:#{id}/detail", expires_in: 12.hours) do
        request = ::TMDB::API::Requests::TV::Series::Details.new(id)
        ::TMDB::API::Client.new(request).call
      end
    end
  end
end
