module Movies
  class SearchResultsComponent < ::ApplicationComponent
    def initialize(movies:, query: nil)
      super
      @query = query
      @movies = movies
    end
  end
end