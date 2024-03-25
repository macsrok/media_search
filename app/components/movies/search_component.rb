module Movies
  class SearchComponent < ApplicationComponent
    def initialize(movies:, query: nil)
      super
      @query = query
      @movies = movies
    end
  end
end
