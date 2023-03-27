class TestPassagesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_test_passege, only: %i[show result update gist]

  def show; end

  def result; end

  def update
    @test_passage.accept!(params[:answer_ids])

    if @test_passage.completed?
      TestsMailer.completed_test(@test_passage).deliver_now
      redirect_to result_test_passage_path(@test_passage)
    else
      redirect_to test_passage_path
    end
  end

  def gist
    result = GistQuestionService.new(@test_passage.current_question).call

    flash_options = unless result.blank?
      gist = current_user.gists.create(question_id: @test_passage.current_question.id, url: result.html_url)
      { notice: t('.success_html', target: :blank, url: result.html_url) }
    else
      { alert: t('.failure') }
    end

    redirect_to @test_passage, flash_options
  end

  private

  def set_test_passege
    @test_passage = TestPassage.find(params[:id])
  end
end
