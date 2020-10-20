class Instrument < ApplicationRecord
  belongs_to :instrumentable, polymorphic: true
  has_many :likes, dependent: :destroy
end
