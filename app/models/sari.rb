# model talks to the database; saris and users are linked and the relationship is listed; the attributes of this model are image, story, owner, user id, and timestamp

class Sari < ActiveRecord::Base
  belongs_to :user
end
