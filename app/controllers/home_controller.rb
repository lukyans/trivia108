class HomeController < ApplicationController
  def index
    @top_users = User.order("points DESC")
  end
end
