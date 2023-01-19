class User < ApplicationRecord

  def list_tests(level)
    Test.joins("JOIN user_profiles ON tests.id = user_profiles.test_id ")
    .where(user_profiles: { user_id: self.id })
    .where(tests: { level: level })
    .pluck(:title)
    # test_id = UserProfile.where("user_id = ?", self.id).pluck(:test_id)
    # Test.where(id: test_id).where("level = ?", level)
  end
end
