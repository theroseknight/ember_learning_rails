class CreateRoadtrips < ActiveRecord::Migration
  def change
    create_table :roadtrips do |t|
      t.string :name
      t.integer :number_of_days
      t.integer :hours_of_sleep
      t.string :car_year
      t.string :car_make
      t.string :car_model
      t.string :car_mpg
      t.timestamps null: false
    end
  end
end
