require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(id: 1, email: 'a@a.com') }

  describe 'association' do
    it 'belongs to a profile' do
      expect(user).to respond_to(:profile)
    end
  end
end
