class CreateIterationSchedules < ActiveRecord::Migration
  def change
    create_table :iteration_schedules do |t|

      t.timestamps null: false
    end
  end
end
