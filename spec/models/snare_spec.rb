require 'rails_helper'

RSpec.describe Snare, type: :model do
  let(:snare) { Snare.new(name: 'Gibson') }

  describe 'association' do
    it 'belongs to an instrument' do
      expect(snare).to respond_to(:instrument)
    end
  end
end
