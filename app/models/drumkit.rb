class Drumkit < ApplicationRecord
  has_one :instrument, as: :instrumentable
end
