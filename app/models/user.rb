class User < ApplicationRecord
  has_many :tests
  has_many :tests_users
  has_many :tests, through: :tests_users

  def list_tests(level)
    Test.joins("JOIN user_profiles ON tests.id = user_profiles.test_id ")
    .where(user_profiles: { user_id: self.id })
    .where(tests: { level: level })
  end
end
