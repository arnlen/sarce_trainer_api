class DailyQuestionsController < ApplicationController
  before_action :set_daily_question, only: [:show, :update, :destroy]

  # GET /daily_questions
  def index
    @daily_questions = DailyQuestion.all

    render json: @daily_questions
  end

  # GET /daily_questions/1
  def show
    render json: @daily_question
  end

  # POST /daily_questions
  def create
    @daily_question = DailyQuestion.new(daily_question_params)

    if @daily_question.save
      render json: @daily_question, status: :created, location: @daily_question
    else
      render json: @daily_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /daily_questions/1
  def update
    if @daily_question.update(daily_question_params)
      render json: @daily_question
    else
      render json: @daily_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /daily_questions/1
  def destroy
    @daily_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_question
      @daily_question = DailyQuestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def daily_question_params
      params.require(:daily_question).permit(:question_id, :answer_counter)
    end
end
