class User < ActiveRecord::Base
  has_many :saris

  has_secure_password
  validates :name, :email, presence: true, uniqueness: true
end
