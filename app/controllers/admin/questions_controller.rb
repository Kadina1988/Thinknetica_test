class Admin::QuestionsController < Admin::BaseController
  before_action :set_test, only: %i[create new]
  before_action :set_question, only: %i[edit show update destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :rescue_question_not_found

  def create
    @question = @test.questions.build(question_params)
    if @question.save
      redirect_to admin_question_path(@question)
    else
      render :new
    end
  end

  def new
    @question = @test.questions.new
  end

  def edit; end

  def show; end

  def update
    if @question.update(question_params)
      redirect_to admin_question_path(@question)
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    redirect_to admin_test_path(@question.test)
  end

  private

  def question_params
    params.require(:question).permit(:body)
  end

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
