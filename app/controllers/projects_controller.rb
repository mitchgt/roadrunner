class ProjectsController < ApplicationController
  def index
    #client = TrackerApi::Client.new(token: Rails.application.secrets.pivotal_tracker_api_key)
    @projects = @client.projects
  end
end
