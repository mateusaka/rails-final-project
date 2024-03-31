class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def new
    @directors = Director.all
    @genres = Genre.all
  end

  def create
    @film = Film.new(params.require(:film).permit(
      :title,
      :release_year,
      :synopsis,
      :country,
      :duration,
      :director_id,
      :genre_id
    ))
    @film.save

    redirect_to films_path
  end

  def edit
  end

  def update
  end
end
