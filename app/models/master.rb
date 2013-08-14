class Master < ActiveRecord::Base
  validates :slogan, length: { maximum: 140 }
  has_many :posts
end
