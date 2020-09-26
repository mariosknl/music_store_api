class Instrument < ApplicationRecord
  belongs_to :instrumentable, polymorphic: true
end
