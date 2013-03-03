class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_projects

  def load_projects
    @projects = Project.all
  end
end
