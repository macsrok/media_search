module Movies
  class SearchResultComponent < ::ApplicationComponent
    def initialize(movie:, query: nil)
      super
      @query = query
      @movie = movie
    end
  end
end
