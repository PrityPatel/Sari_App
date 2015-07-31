# model talks to the database; users and saris are linked and the relationship is listed; the attributes of this model are name, email, password digest, and timestamp



class User < ActiveRecord::Base
  has_many :saris

  has_secure_password
  validates :name, :email, presence: true, uniqueness: true
end
