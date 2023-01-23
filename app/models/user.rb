class User < ApplicationRecord
  has_many :created_tests, class_name: 'Test', foreign_key: 'author_id', dependent: :destroy
  has_many :tests_users
  has_many :passed_test, through: :tests_users, source: :test, dependent: :destroy

  def list_tests(level)
    Test.joins(:tests_users)
    .where(tests_users: { user_id: self.id })
    .where(tests: { level: level })
  end
end
