class HomeController < ApplicationController
  # before_action :set_question

  def index
    # binding.pry
    @answer = Question.all
  end

  # private
    # Use callbacks to share common setup or constraints between actions.
    # def set_question
    #   @question = Question.find(params[:question_id])
    # end
    #
end
