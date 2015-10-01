class AnswerGivensController < ApplicationController
  before_action :set_answer_given, only: [:show, :update, :destroy]

  # GET /answer_givens
  def index
    @answer_givens = AnswerGiven.all

    render json: @answer_givens
  end

  # GET /answer_givens/1
  def show
    render json: @answer_given
  end

  # POST /answer_givens
  def create
    @answer_given = AnswerGiven.new(answer_given_params)

    if @answer_given.save
      render json: @answer_given, status: :created, location: @answer_given
    else
      render json: @answer_given.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /answer_givens/1
  def update
    if @answer_given.update(answer_given_params)
      render json: @answer_given
    else
      render json: @answer_given.errors, status: :unprocessable_entity
    end
  end

  # DELETE /answer_givens/1
  def destroy
    @answer_given.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_given
      @answer_given = AnswerGiven.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def answer_given_params
      params.require(:answer_given).permit(:user_id, :question_id, :answer, :is_correct)
    end
end
