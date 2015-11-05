class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :begins_on
      t.date :ends_on
      t.references :user, index: true, foreign_key: true
      t.references :chicken, index: true, foreign_key: true
      t.boolean :accepted

      t.timestamps null: false
    end
  end
end
