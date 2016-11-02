class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :replies, dependent: :destroy
  has_secure_password

end
