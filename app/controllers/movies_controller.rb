class MoviesController < ApplicationController
     before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
  	@movies=Movie.all
  end
  def new
  	@movie=Movie.new
  end
  def create
    @movie=Movie.new(movie_params)
    @movie.save
    redirect_to movies_url
  end
  def edit
    end
  def update
     @movie.update(movie_params)
    @movie.save
    redirect_to movies_url
  end
   def show
      end
   def destroy
    @movie.destroy
    redirect_to movies_url
  end
  def set_movie
      @movie = Movie.find(params[:id])
    end
  def movie_params
      params.require(:movie).permit(:name, :moviedate, :movietime)
    end
    
  end
