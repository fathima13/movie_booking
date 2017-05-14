class Movie < ApplicationRecord
	has_many :bookings
	has_many :movie_theatres
	has_many :theatres, through: :movie_theatres
end
