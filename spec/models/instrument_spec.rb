require 'rails_helper'

RSpec.describe Instrument, type: :model do
  let(:instrument) { Instrument.new }

  describe 'associations' do
    it 'belongs to instrumentable' do
      expect(instrument).to respond_to(:instrumentable)
    end
  end
end
