require 'rails_helper'

RSpec.describe Drumkit, type: :model do
  let(:drumkit) { Drumkit.new(name: 'Pearl') }

  describe 'association' do
    it 'belongs to an instrument' do
      expect(drumkit).to respond_to(:instrument)
    end
  end
end
