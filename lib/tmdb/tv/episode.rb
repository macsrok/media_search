# frozen_string_literal: true

module TMDB::TV
  class Episode < ::TMDB::Resource
    attr_accessor :air_date, :episode_number, :episode_type, :production_code, :runtime, :season_number, :show_id, :still_path
  end
end
