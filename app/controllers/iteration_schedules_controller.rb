class IterationSchedulesController < ApplicationController
  def index
    @iteration_schedules = IterationSchedule.all
  end

  def show
    @iteration_schedule = IterationSchedule.find(params[:id])
  end

  def new
    @iteration_schedule = IterationSchedule.new
  end

  def create
    @iteration_schedule = IterationSchedule.new(iteration_schedule_params)

    @iteration_schedule.save
    redirect_to @iteration_schedule
  end

  private
    def iteration_schedule_params
      params.require(:iteration_schedule).permit(:team)
    end

end
