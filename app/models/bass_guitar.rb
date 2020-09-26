class BassGuitar < ApplicationRecord
  has_one :instrument, as: :instrumentable
end
