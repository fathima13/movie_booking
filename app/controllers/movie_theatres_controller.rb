class MovieTheatresController < ApplicationController
def index
	@movietheatres=MovieTheatre.all
	@movies=Movie.all
	@theatres=Theatre.all
end
def new
	@movietheatre=MovieTheatre.new
	@movies=Movie.all
	@theatres=Theatre.all
end
def create
	@movietheatre=MovieTheatre.new
	@movies=Movie.all
	@theatres=Theatre.all
	@movietheatre.movie_id=params[:movie_theatre][:movie_id]
	@movietheatre.theatre_id=params[:movie_theatre][:theatre_id]
	@movietheatre.save
	redirect_to movie_theatres_url
end
def edit
	@movies=Movie.all
	@theatres=Theatre.all
	@movietheatre.movie_id=params[:movie_theatre][:movie_id]
	@movietheatre.theatre_id=params[:movie_theatre][:theatre_id]
	@movietheatre.save
	redirect_to movie_theatres_url
end
def destroy
	@movietheatre=MovieTheatre.find(params[:id])
	@movietheatre.destroy
	redirect_to movie_theatres_url
end
end
