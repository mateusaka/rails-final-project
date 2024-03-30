class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
  end

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))
    @genre.save
    
    redirect_to root_path
  end
end
