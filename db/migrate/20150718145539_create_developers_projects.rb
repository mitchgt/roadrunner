class CreateDevelopersProjects < ActiveRecord::Migration
  def change
    create_table :developers_projects, :id => false do |t|
      t.references :developer
      t.references :project
    end
  end
end
