require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(id: 1, email: 'a@a.com') }

  describe 'association' do
    it 'belongs to a profile' do
      expect(user).to respond_to(:profile)
    end

    it 'has many likes' do
      expect(user).to respond_to(:likes)
    end
  end

  describe 'user errors' do
    let(:user2) { User.new(email: '') }
    it 'raise an error if email is not given' do
      expect(user2).not_to be_valid
    end

    it 'a user should have a password' do
      user2.email = 'a@a.com'
      expect(user2).not_to be_valid
    end

    it 'a user has a profile' do
      expect(user2).not_to be_valid
    end

    it 'a user is valid if it has a profile' do
      user2.email = 'b@b.com'
      user2.password = '000000'
      user2.profile = Guest.create(username: 'a')
      expect(user2).to be_valid
    end

    it 'is not valid without a profile even if he has email and password' do
      user2.profile = nil
      expect(user2).not_to be_valid
    end
  end
end
