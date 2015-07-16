class IterationSchedule < ActiveRecord::Base
  validates :team,  presence: true,
                    length: { minimum: 3}
end
