class Snare < ApplicationRecord
  has_one :instrument, as: :instrumentable
end
