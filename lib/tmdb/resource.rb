# frozen_string_literal: true

module TMDB
  class Resource
    attr_accessor :adult,
                  :backdrop_path,
                  :genre_ids,
                  :id,
                  :origin_country,
                  :original_language,
                  :original_name,
                  :overview,
                  :popularity,
                  :poster_path,
                  :first_air_date,
                  :name,
                  :vote_average,
                  :vote_count,
                  :logo_path,
                  :origin_country

    def initialize(args = {})
      args.each { |k, v| try("#{k}=".to_sym, v) }
    end

    def poster_url
      return unless poster_path

      "https://image.tmdb.org/t/p/w500#{poster_path}"
    end
  end
end
