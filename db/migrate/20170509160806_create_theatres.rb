class CreateTheatres < ActiveRecord::Migration[5.0]
  def change
    create_table :theatres do |t|
      t.string :name
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
