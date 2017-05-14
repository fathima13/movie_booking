class CreateMovieTheatres < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_theatres do |t|
      t.references :movie, foreign_key: true
      t.references :theatre, foreign_key: true

      t.timestamps
    end
  end
end
