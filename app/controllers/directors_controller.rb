class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def new
  end

  def create
    @director = Director.new(params.require(:director).permit(:name))
    @director.save

    redirect_to directors_path
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])
    @director.update(params.require(:director).permit(:name))

    redirect_to directors_path
  end
end
