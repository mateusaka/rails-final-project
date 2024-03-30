class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def new
    @genres = Genre.all
  end

  def create
    @director = Director.new(params.require(:director).permit(:name, :nationality, :birth_date, :genre_id))
    @director.save

    redirect_to directors_path
  end

  def edit
    @director = Director.find(params[:id])
    @genres = Genre.all
  end

  def update
    @director = Director.find(params[:id])
    @director.update(params.require(:director).permit(:name, :nationality, :birth_date, :genre_id))

    redirect_to directors_path
  end
end
