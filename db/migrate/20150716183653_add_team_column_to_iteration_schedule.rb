class AddTeamColumnToIterationSchedule < ActiveRecord::Migration
  def change
    add_column :iteration_schedules, :team, :string
  end
end
