class Test < ApplicationRecord
  INFINITY = Float::INFINITY

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :category

  has_many :questions, dependent: :destroy
  has_many :tests_users
  has_many :users, through: :tests_users, dependent: :destroy

  validates :title, uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true, greater_than: 0 }

  scope :easy, -> { where(level:(0..1)) }
  scope :middle, -> { where(level:(2..4) ) }
  scope :hard, -> { where(level:(5..INFINITY)) }
  scope :same_category, -> (category) { joins(:category)
                                        .where(categories: { title: category })
                                        .order(title: :desc) }

  def self.same_category_list(category_name)
    same_category(category_name).pluck(:title)
  end

end
