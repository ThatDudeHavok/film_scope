class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :reviews

  validates :username, {
    presence: true
  }
end
