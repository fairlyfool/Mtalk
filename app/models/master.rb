class Master < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates_uniqueness_of :email, message: "The email address has been taken.",
                          case_sensitive: false
  validates :slogan, length: { maximum: 140 }
  has_many :posts
  
  has_secure_password
  validates :password, length: { minimum: 8, maximum: 20 }
end
