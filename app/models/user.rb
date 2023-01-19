class User < ApplicationRecord

  def list_tests(level)
    Test.joins("JOIN user_profiles ON tests.id = user_profiles.test_id ")
    .where(user_profiles: { user_id: self.id })
    .where(tests: { level: level })
  end
end
