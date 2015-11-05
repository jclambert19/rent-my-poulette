class CreateChickens < ActiveRecord::Migration
  def change
    create_table :chickens do |t|
      t.string :name
      t.text :description
      t.text :address
      t.integer :price_per_day
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false

      add_column :chickens, :latitude, :float
      add_column :chickens, :longitude, :float
    end
  end
end
