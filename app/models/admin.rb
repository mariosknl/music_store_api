# frozen_string_literal: true

class Admin < ApplicationRecord
  has_one :user, as: :profile
end
