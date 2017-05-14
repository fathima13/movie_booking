class AddMoviedateToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :moviedate, :date
  end
end
