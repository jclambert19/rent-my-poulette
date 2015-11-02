class CreateChickens < ActiveRecord::Migration
  def change
    create_table :chickens do |t|
      t.string :name
      t.text :description
      t.text :address
      t.integer :price_per_day
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
