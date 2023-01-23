class Test < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :category

  has_many :questions, dependent: :destroy
  has_many :tests_users
  has_many :users, through: :tests_users, dependent: :destroy

  def self.tests_same_category(category_name)
    Test.joins(:category)
    .where(categories: { title: category_name })
    .order(title: :DESC)
    .pluck(:title)
  end
end
