class MoviesController < ApplicationController
  def index
    @query = params[:query]
    @movies = []
    @movies = TMDB::SearchService.search(@query) if @query
  end

  def show
    @query = params[:query]
    @movie = TMDB::DetailsService.fetch(params[:id])
  end

  def search
    @query = params[:query]
    @movies = []
    @movies = TMDB::SearchService.search(@query) if @query
  end
end
