class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_var

  private
  def set_var
    @client = TrackerApi::Client.new(token: Rails.application.secrets.pivotal_tracker_api_key)
  end

end
