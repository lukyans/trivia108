class AnswersController < ApplicationController
  before_action :set_question
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  # GET questions/1/answers
  def index
    @answers = @question.answers
  end

  # GET questions/1/answers/1
  def show
  end

  # GET questions/1/answers/new
  def new
    @answer = @question.answers.build
  end

  # GET questions/1/answers/1/edit
  def edit
  end

  # POST questions/1/answers
  def create
    @answer = @question.answers.build(answer_params)

    if @answer.save
      redirect_to(questions_path, notice: 'Answer was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT questions/1/answers/1
  def update
    answer = Answer.find params[:answer][:answer_id]
    if answer.correct == true
      current_user.points += 4
    else
      current_user.points -= 1
    end
    current_user.save
    if @answer.update_attributes(answer_params)
      redirect_to(questions_path, notice: 'Answer was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE questions/1/answers/1
  def destroy
    @answer.destroy

    redirect_to questions_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:question_id])
    end

    def set_answer
      @answer = @question.answers.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def answer_params
      params.require(:answer).permit(:name, :correct)
    end
end
