class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :name
      t.integer :longitude
      t.integer :latitude

      t.timestamps
    end
  end
end
