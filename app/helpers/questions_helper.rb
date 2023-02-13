module QuestionsHelper

  def question_header
    @test.title
  end

  def current_year
    Time.now.year
  end

  def address
    link_to ' Project Test Guru', 'https://github.com/Kadina1988/Thinknetica_test'
  end
end
