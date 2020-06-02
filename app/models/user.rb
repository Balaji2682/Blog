class User < ApplicationRecord
  has_many :Article
  validates :username, presence: true,
            length: {minimum: 3, maximum:25}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,
            length: { maximum:100 },
            uniqueness: {case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }
end

