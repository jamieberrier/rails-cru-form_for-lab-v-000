class SongsController < ApplicationController
  def index
    @songs = Genre.all
  end

  def show
    @song = Genre.find(params[:id])
  end

  def new
    @song = Genre.new
  end

  def create
    @song = Genre.new(genre_params(:name))
    @song.save
    redirect_to genre_path(@song)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  private

  def genre_params(*args)
	  params.require(:genre).permit(*args)
	end
end
