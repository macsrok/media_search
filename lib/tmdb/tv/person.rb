# frozen_string_literal: true

module TMDB::TV
  class Person < ::TMDB::Resource
    attr_accessor :credit_id, :gender, :profile_path

    def initialize(attributes = {})
      super
      @gender = gender_as_symbol
    end

    private
    def gender_as_symbol
      case @gender
      when 1
        :female
      when 2
        :male
      when 3
        :non_binary
      else
        :unknown
      end
    end
  end
end