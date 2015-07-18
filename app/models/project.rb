class Project < ActiveRecord::Base
  has_and_belongs_to_many :developers, join_table :developers_projects
end
