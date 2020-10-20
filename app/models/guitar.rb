class Guitar < ApplicationRecord
  has_one :instrument, as: :instrumentable
end
