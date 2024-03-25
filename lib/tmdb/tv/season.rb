# frozen_string_literal: true

module TMDB::TV
  class Season < ::TMDB::Resource
    attr_accessor :air_date, :episode_count, :season_number
  end
end