class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true

  scope :right, -> { where(correct: true) }

  validate :validate_count_answers, on: :create

  private

  def validate_count_answers
    errors.add(:qategory_id, 'too much answers for question') if Answer.where(question_id: self.question_id).count > 3
  end

end
