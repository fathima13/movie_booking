class AddMovietimeToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :movietime, :time
  end
end
