class Article < ApplicationRecord
  searchkick  word_start: [:title]
  belongs_to :user, optional: true
  has_and_belongs_to_many :authors
  validates :title, presence: true, length: { minimum: 6, maximum: 350 }
  validates :description, presence: true, length: { minimum: 6, maximum: 1000 }

  def full_description
    title + description
  end

  def search_data
    attributes.merge(user&.attributes&.slice('email', 'username').to_h)
  end
end

[*1..10].each{|i| Author.create}
