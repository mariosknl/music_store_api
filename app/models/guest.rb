# frozen_string_literal: true

class Guest < ApplicationRecord
  has_one :user, as: :profile
end
