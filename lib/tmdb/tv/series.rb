# frozen_string_literal: true

module TMDB::TV
  class Series < ::TMDB::Resource
    attr_accessor :created_by,
                  :episode_run_time,
                  :genres,
                  :homepage,
                  :in_production,
                  :languages,
                  :last_air_date,
                  :last_episode_to_air,
                  :next_episode_to_air,
                  :networks,
                  :number_of_episodes,
                  :number_of_seasons,
                  :production_companies,
                  :production_countries,
                  :seasons,
                  :spoken_languages,
                  :status,
                  :tagline,
                  :type

    def initialize(args = {})
      super(args)
      inflate_seasons
      inflate_last_episode_to_air
      inflate_created_by
      inflate_genres
      inflate_production_companies
      inflate_networks
    end

    private

    def inflate_seasons
      @seasons = @seasons.map do |season|
        TMDB::TV::Season.new(season)
      end
    end

    def inflate_last_episode_to_air
      @last_episode_to_air = TMDB::TV::Episode.new(@last_episode_to_air)
    end

    def inflate_created_by
      @created_by = @created_by.map do |person|
        TMDB::TV::Person.new(person)
      end
    end

    def inflate_genres
      @genres = @genres.map do |genre|
        TMDB::Genre.new(genre)
      end
    end

    def inflate_production_companies
      @production_companies = @production_companies.map do |company|
        TMDB::ProductionCompany.new(company)
      end
    end

    def inflate_networks
      @networks = @networks.map do |network|
        TMDB::TV::Network.new(network)
      end
    end
  end
end
