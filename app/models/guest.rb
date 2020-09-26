class Guest < ApplicationRecord
  has_one :user, as: :profile
end
