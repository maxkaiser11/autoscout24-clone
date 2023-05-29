class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :type_of_vehicle
      t.string :title
      t.string :image_url
      t.integer :price_per_day
      t.string :location
      t.string :brand
      t.string :model
      t.string :description
      t.integer :year
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
