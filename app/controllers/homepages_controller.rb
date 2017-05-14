class HomepagesController < ApplicationController
def home
	@user=User.new
end
def select_city
	@cities=City.all
	end

	def finalise_city
		city = params[:city]
		redirect_to "/city/#{city}/theatres"
		# "/city" + city + "/theatres"
	end

	def select_theatre
		@city=City.find_by name: params[:city]
		@theatres=@city.theatres
	end
	def finalise_theatre
		theatre = params[:theatre]
		redirect_to "/theatre/#{theatre}/movies"
	end
	def select_movie
		@booking=Booking.new
		@theatre=Theatre.find_by name: params[:theatre]
		@movies=@theatre.movies
	end
	def finalise_movie
		@booking=Booking.new
		@booking.movie_id=params[:booking][:movie_id]
		@booking.noticket=params[:booking][:noticket]
		@booking.user_id = User.find_or_create_by(name: params[:booking][:user_name]).id
		@booking.save
		redirect_to booking_url(id: @booking.id)
	end
end
