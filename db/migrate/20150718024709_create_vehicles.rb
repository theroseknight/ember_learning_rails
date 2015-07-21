class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :city_mpg
      t.string :fuel_type
      t.integer :highway_mpg
      t.integer :api_id_number
      t.string :make
      t.string :model
      t.string :year

      t.timestamps null: false
    end
  end
end
