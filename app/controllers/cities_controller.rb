class CitiesController < ApplicationController
    def index
  	@cities=City.all
  end
  def new
  	@city=City.new
  end
  def create
  	@city=City.new
  	@city.name=params[:city][:name]
  	@city.save
  	redirect_to cities_url

  end
  def edit
  	@city=City.find(params[:id])
  end
  def update
  	@city=City.find(params[:id])
  	@city.name=params[:city][:name]
  	@city.save
  	redirect_to cities_url
  end
  def show
  	  	@city=City.find(params[:id])
  end
  def destroy
  	@city=City.find(params[:id])
  	@city.destroy
  	redirect_to cities_url
  end
end
