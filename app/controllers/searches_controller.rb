class SearchesController < ApplicationController
  def new
  	@search = Search.new
  end

  def create
  	@search = Search.create(params[:search])
  	@search.i_found_you
  	if @search.save
      params[:hola]=@search.id
      
      if @search.tipo == "artist"
        redirect_to :controller => '/artists', :action => 'index', :hola=>@search.id
      elsif
        @search.tipo == "album"
        redirect_to :controller => '/albums', :action => 'index', :hola=>@search.id
      else
        redirect_to :controller => '/tracks', :action => 'index', :hola=>@search.id  
      end
    else
        render :new
    end
  end

  def destroy
  	Search.find_by_id(params[:id]).try(:delete)
    redirect_to searches_path
  end

  def index

  	@search = Search.all
  end
end
