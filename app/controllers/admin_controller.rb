class AdminController < ApplicationController
  before_action :admin_required

  def index
    @events = Event.all
    @articles = Article.all
  end
end
