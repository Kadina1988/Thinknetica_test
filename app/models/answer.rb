class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true

  scope :correct, -> { where(correct: true) }

  validate :validate_count_answers, on: :create

  private

  def validate_count_answers
    question = Question.find_by(id: self.question_id)
    errors.add(:qategory_id, 'too much answers for question') if question.answer_ids.count > 3
  end

end
