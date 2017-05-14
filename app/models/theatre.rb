class Theatre < ApplicationRecord
  belongs_to :city
  has_many :movie_theatres
  has_many :movies, through: :movie_theatres
end
