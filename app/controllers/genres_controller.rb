class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
  end

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))
    @genre.save

    redirect_to genres_path
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:genre).permit(:name))

    redirect_to genres_path
  end
end
