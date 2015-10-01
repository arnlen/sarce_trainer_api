class GivenAnswersController < ApplicationController
  before_action :set_given_answer, only: [:show, :update, :destroy]

  # GET /given_answers
  def index
    @given_answers = GivenAnswer.all

    render json: @given_answers
  end

  # GET /given_answers/1
  def show
    render json: @given_answer
  end

  # POST /given_answers
  def create
    @given_answer = GivenAnswer.new(given_answer_params)

    if @given_answer.save
      render json: @given_answer, status: :created, location: @given_answer
    else
      render json: @given_answer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /given_answers/1
  def update
    if @given_answer.update(given_answer_params)
      render json: @given_answer
    else
      render json: @given_answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /given_answers/1
  def destroy
    @given_answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_given_answer
      @given_answer = GivenAnswer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def given_answer_params
      params.require(:given_answer).permit(:user_id, :question_id, :answer, :is_correct)
    end
end
