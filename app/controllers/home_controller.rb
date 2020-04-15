class HomeController < ApplicationController
  def index
    @top_users = User.order("points DESC")
    @average_score = User.average_score
    @players_count = User.count
  end
end
