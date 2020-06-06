class Article < ApplicationRecord
  searchkick  word_start: [:title]
  belongs_to :user
  validates :title, presence: true, length: { minimum: 6, maximum: 350 }
  validates :description, presence: true, length: { minimum: 6, maximum: 1000 }

  def full_description
    title + description
  end

  def search_data
    attributes.merge(user&.attributes&.slice('email', 'username').to_h)
  end
end
