class Booking < ApplicationRecord
	attr_accessor :user_name
  belongs_to :movie
  belongs_to :user
end
