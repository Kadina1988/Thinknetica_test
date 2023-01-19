class Test < ApplicationRecord

  def self.list(category_name)
    Test.joins('JOIN categories ON categories.id = tests.category_id').where("categories.title = ?", category_name).order(title: :DESC).pluck(:title)
  end
end
