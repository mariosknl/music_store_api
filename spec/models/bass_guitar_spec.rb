require 'rails_helper'

RSpec.describe BassGuitar, type: :model do
  let(:guitar) { BassGuitar.new(name: 'Ibanez') }

  describe 'association' do
    it 'belongs to an instrument' do
      expect(guitar).to respond_to(:instrument)
    end
  end
end
