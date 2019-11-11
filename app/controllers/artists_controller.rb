class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    binding.pry
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
  end

  private

  def artist_params(*args)
	  params.require(:student).permit(*args)
	end
end
