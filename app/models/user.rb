class User < ApplicationRecord
  has_many :microposts

  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }   # Replace FILL_IN with the right code.
  
 
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255},  # Replace FILL_IN with the right code.
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end