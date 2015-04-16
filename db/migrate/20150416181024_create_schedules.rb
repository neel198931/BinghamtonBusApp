class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :bus	
      t.references :stop
      t.string :arrival_time		
      t.timestamps
    end
   add_index :schedules,["bus_id","stop_id"]	
  end
end
