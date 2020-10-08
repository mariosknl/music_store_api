require 'rails_helper'

RSpec.describe BassGuitar, type: :model do
  let(:bass_guitar) { BassGuitar.new(name: 'Ibanez') }

  describe 'association' do
    it 'belongs to an instrument' do
      expect(bass_guitar).to respond_to(:instrument)
    end
  end
end
