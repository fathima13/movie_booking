class TheatresController < ApplicationController
  def index
  	@theatres=Theatre.all
  end
  def new
  	@theatre = Theatre.new
  	@cities=City.all
  end
  def create
  	@theatre=Theatre.new
  	@cities=City.all
  	@theatre.name=params[:theatre][:name]
  	@theatre.city_id=params[:theatre][:city_id]
  	@theatre.save
  	redirect_to theatres_url
  end
  def update
  	@theatre=Theatre.find(params[:id])
  	@theatre.name=params[:theatre][:name]
  	@theatre.city_id=params[:theatre][:city_id]
  	@theatre.save
  	redirect_to theatres_url
  end
  def edit
  	@theatre=Theatre.find(params[:id])
  	@cities=City.all
    end
  def show
  	@theatre=Theatre.find(params[:id])
  end
  def destroy
  	@theatre=Theatre.find(params[:id])
  	@theatre.destroy
  	redirect_to theatres_url
  end
end
