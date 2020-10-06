require 'rails_helper'

RSpec.describe Guitar, type: :model do
  let(:guitar) { Guitar.new(name: 'Gibson') }

  describe 'association' do
    it 'belongs to an instrument' do
      expect(guitar).to respond_to(:instrument)
    end
  end
end
