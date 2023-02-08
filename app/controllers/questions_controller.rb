class QuestionsController < ApplicationController
  before_action :set_test, only: %i[index new create]
  before_action :set_question, only: %i[show destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :rescue_question_not_found

  def index
    @test_questions = @test.questions
  end

  def show
    render inline: '<%= @question.body %>'
  end

  def new
  end

  def create
      Question.create(
      body: params[:question][:body],
      test: @test
    )
  end

  def destroy
    @question.destroy
  end

  private

  def set_test
    @test = Test.find(params[:test_id])
  end

  def set_question
    @question = Question.find(params[:id])
  end

  def rescue_question_not_found
    render plain: 'Question not found'
  end
end
