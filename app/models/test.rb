class Test < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :category
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  def self.list(category_name)
    Test.joins('JOIN categories ON categories.id = tests.category_id')
    .where(categories: { title: category_name })
    .order(title: :DESC)
    .pluck(:title)
  end
end
