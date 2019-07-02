class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(fiction non-fiction),
  message: "%{value} is not a valid selection" }
  validates :content, length: { maximum: 100 }
end
