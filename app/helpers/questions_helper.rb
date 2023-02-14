module QuestionsHelper

  def question_header
    if action_name.in?('edit')
      "Edit #{ @question.test.title } Question"
    elsif  action_name.in?('new')
      "Create New  #{ @test.title } Question"
    end
  end

  def current_year
    Time.current.year
  end

  def link_html
    link_to 'Project Test Guru', 'https://github.com/Kadina1988/Thinknetica_test'
  end
end
