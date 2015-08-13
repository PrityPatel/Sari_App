# model talks to the database; users and saris are linked and the relationship is listed; the attributes of this model are name, email, password digest, and timestamp



class User < ActiveRecord::Base
  has_many :saris

  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, presence: true, uniqueness: true
  validates :password, length: {in: 5..11}
end
