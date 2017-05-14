class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :movie, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :noticket

      t.timestamps
    end
  end
end
