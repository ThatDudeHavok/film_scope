class Review < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :reviewer, {
    class_name: :User
  }
  belongs_to :film

  validates :film_id, {
    presence: true
  }

  validates :reviewer, {
    presence: true
  }
end
