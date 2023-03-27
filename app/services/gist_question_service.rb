class GistQuestionService


  def initialize(question, client: nil)
    @question = question
    @test = @question.test
    @client = client || OctokitClient.new(access_token: ENV['GITHUB_TOKEN'])
  end

  def call
    @client.create_gist(gist_params)
  end

  private

  def gist_params
    {
      description: I18n.t('gist_question_service.gist_params.description', title: @test.title),
      files: {
        I18n.t('.gist_question_service.gist_params.files') => {
          content: gist_content
        }
      }
    }
  end

  def gist_content
    content = [@question.body]
    content += @question.answers.pluck(:body)
    content.join("\n")
  end

end
