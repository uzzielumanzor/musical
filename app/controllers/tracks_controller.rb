class TracksController < ApplicationController
  def index
  	@track = Track.new
	@track.encontrar_varios(params[:hola].to_i)
	@track = Track.all
  Track.destroy_all
  end

  def show
  end

  def create
  end

  def destroy
  end
end
