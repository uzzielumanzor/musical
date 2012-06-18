class AlbumsController < ApplicationController
  def index
  @album = Album.new
	@album.encontrar_varios(params[:hola].to_i)
	@album = Album.all
  Album.destroy_all
  end

  def show
  end

  def create
  end

  def destroy
  end
end
