class MovieTheatre < ApplicationRecord
  belongs_to :movie
  belongs_to :theatre
end
