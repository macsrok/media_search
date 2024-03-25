# frozen_string_literal: true

module TMDB
  class Movie < Resource
    attr_accessor :belongs_to_collection,
                  :budget,
                  :genres,
                  :homepage,
                  :imdb_id,
                  :original_title,
                  :production_companies,
                  :production_countries,
                  :release_date,
                  :revenue,
                  :runtime,
                  :spoken_languages,
                  :status,
                  :tagline,
                  :title,
                  :video
  end
end
