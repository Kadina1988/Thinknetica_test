class User < ApplicationRecord

  def list_tests(level)
    Test.where("level = ? AND author_id = ?", level, self.id)
  end
end
