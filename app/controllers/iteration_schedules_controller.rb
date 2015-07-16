class IterationSchedulesController < ApplicationController
  def index
    @iteration_schedules = IterationSchedule.all
  end

  def show
    @iteration_schedule = IterationSchedule.find(params[:id])
  end

  def new
    #render plain: params[:iteration_schedule].inspect
    @iteration_schedule = IterationSchedule.new
  end

  def create
    @iteration_schedule = IterationSchedule.new(iteration_schedule_params)

    if @iteration_schedule.save
      redirect_to @iteration_schedule
    else
      render 'new'
    end
  end

  private
    def iteration_schedule_params
      params.require(:iteration_schedule).permit(:team)
    end

end
