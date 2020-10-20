require 'rails_helper'

RSpec.describe Cymbal, type: :model do
  let(:cymbal) { Cymbal.new(name: 'Gibson') }

  describe 'association' do
    it 'belongs to an instrument' do
      expect(cymbal).to respond_to(:instrument)
    end
  end
end
