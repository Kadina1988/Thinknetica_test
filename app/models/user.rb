class User < ApplicationRecord

  def list_tests(level)
    test_id = UserProfile.where("user_id = ?", self.id).pluck(:test_id)
    Test.where(id: test_id).where("level = ?", level)
  end
end
