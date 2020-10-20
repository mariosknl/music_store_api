class Admin < ApplicationRecord
  has_one :user, as: :profile
end
