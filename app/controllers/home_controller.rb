class HomeController < ApplicationController
  def index
    @top_projects = Project.unscoped.popular
    @upcoming_events = Event.unscoped.upcoming
    @recent_events = Event.recent
    @related_projects = Project.fake_related
  end
end
