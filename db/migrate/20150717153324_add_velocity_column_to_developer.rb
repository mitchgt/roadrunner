class AddVelocityColumnToDeveloper < ActiveRecord::Migration
  def change
    add_column :developers, :rolling_velocity, :integer
  end
end
