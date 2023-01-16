class Test < ApplicationRecord

  def self.list(category_name)
    name_test = []
    tests = Test.joins('JOIN categories ON categories.id = tests.category_id').where("categories.title = ?", category_name).order(title: :DESC)
    tests.each { |test| name_test << test.title }
    name_test
  end
end
