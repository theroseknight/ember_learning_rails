class CreateRoadtrips < ActiveRecord::Migration
  def change
    create_table :roadtrips do |t|
      t.string :name
      t.integer :number_of_days
      t.integer :hours_of_sleep
      t.timestamps null: false
    end
  end
end
