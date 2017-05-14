class BookingsController < ApplicationController
  def index
  	@bookings=Booking.all
  end
  def new
  	@booking = Booking.new
  	@movies=Movie.all
  	@users=User.all
  end
  def create
  	@booking=Booking.new
  	@movies=Movie.all
  	@users=User.all
  	@booking.noticket=params[:booking][:noticket]
  	@booking.movie_id=params[:booking][:movie_id]
  	@booking.user_id=params[:booking][:user_id]
  	@booking.save
  	redirect_to bookings_url
  end
  def update
  	@booking=Booking.find(params[:id])
  	@booking.noticket=params[:booking][:noticket]
  	@booking.movie_id=params[:booking][:movie_id]
  	@booking.user_id=params[:booking][:user_id]
  	@booking.save
  	redirect_to bookings_url
  end
  def edit
  	@booking=Booking.find(params[:id])
  	@movies=Movie.all  
  	@users=User.all
    end
  def show
  	@booking=Booking.find(params[:id])
  end
  def destroy
  	@booking=Booking.find(params[:id])
  	@booking.destroy
  	redirect_to bookings_url
  end
end
