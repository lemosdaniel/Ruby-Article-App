class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :body, length: { maximum: 1000 }

  default_scope -> { where(publish: false) }
end
