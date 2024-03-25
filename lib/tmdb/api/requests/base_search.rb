# frozen_string_literal: true

module TMDB::API::Requests
  class BaseSearch < Base
    attr_reader :query, :page

    def initialize(query, page = 1)
      @query = CGI.escape(query)
      @page = page
    end
  end
end