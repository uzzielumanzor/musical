class ArtistsController < ApplicationController
  def index
	@artist = Artist.new
	@artist.encontrar_varios(params[:hola].to_i)
	@artist = Artist.all
	Artist.destroy_all
  end

  def create
  end

  def destroy
  end
end
