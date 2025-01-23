class OmdbController < ApplicationController
  def search
    if params[:query].present?
      @movies = OmdbMovie.search(params[:query])
    else
      @movies = []
    end
  end
end
