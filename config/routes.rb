Rails.application.routes.draw do

  

  get 'movie_theatres/index'

get 'movie_theatres/new'

	# get '/home' => "homepages#home"
	get '/select_city' => "homepages#select_city"
	post '/select_city' => "homepages#finalise_city"
	get '/city/:city/theatres' => "homepages#select_theatre"
	post '/city/:city/theatres' => "homepages#finalise_theatre"
	get '/theatre/:theatre/movies' => "homepages#select_movie"
	post '/theatre/:theatre/movies' => "homepages#finalise_movie"
  root "homepages#select_city"
  resources :cities
  resources :users
  resources :theatres
  resources :movies
  resources :bookings
  resources :movie_theatres
end
