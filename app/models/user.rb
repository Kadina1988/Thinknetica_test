class User < ApplicationRecord
  has_many :created_tests, class_name: 'Test', foreign_key: 'author_id', dependent: :destroy
  has_many :tests_users
  has_many :passed_tests, through: :tests_users, source: :test, dependent: :destroy

  validates :name, :email, presence: true

  def list_tests(level)
    passed_tests.where(tests: { level: level })
  end
end
