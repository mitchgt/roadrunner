class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :tracker_id
      t.date :start_date
      t.text :description
      t.integer :current_velocity
      t.timestamps null: false
    end
  end
end
