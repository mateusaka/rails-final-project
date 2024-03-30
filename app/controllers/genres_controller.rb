class GenresController < ApplicationController
  def list
    @genres = Genre.all
  end
end
