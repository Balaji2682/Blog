class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 6, maximum: 350 }
  validates :description, presence: true, length: { minimum: 6, maximum: 1000 }
end
