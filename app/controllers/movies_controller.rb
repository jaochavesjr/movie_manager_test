class MoviesController < ApplicationController
  before_action :set_movie, only: [ :show, :edit, :update, :destroy ]

  # Listagem de filmes favoritos
  def index
    @movies = Movie.all
  end

  def create
    Rails.logger.info "Creating movie with params: #{params[:movie].inspect}"

    @movie = Movie.new(movie_params)

    if @movie.save
      Rails.logger.info "Movie successfully added: #{@movie.title} (#{@movie.year})"
      redirect_to movies_path, notice: "Movie added to favorites!"
    else
      Rails.logger.error "Failed to add movie: #{@movie.errors.full_messages.join(', ')}"
      redirect_to search_path, alert: "Failed to add movie to favorites."
    end
  end

  # Detalhes do filme
  def show
  end

  # Formulário para editar comentário
  def edit
  end

  # Atualizar comentário
  def update
    if @movie.update(movie_params)
      redirect_to movies_path, notice: "Comment updated successfully!"
    else
      render :edit, alert: "Failed to update comment."
    end
  end

  # Remover filme dos favoritos
  def destroy
    @movie.destroy
    redirect_to movies_path, notice: "Movie removed from favorites."
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :year, :genre, :director, :plot, :comment)
  end
end
