require 'rails_helper'

RSpec.describe 'User Registration', type: :request do
  describe 'POST registrations#create' do
    it 'creates a new guest user' do
      user = User.new
      user.email = 'a@a.com'
      user.password = 'Password10'
      user.profile = Guest.create(
        username: 'user10'
      )
      post '/signup', params: user.to_json, headers: { "Content-Type": 'application/json' }
      expect(response).to have_http_status(200)
    end

    it 'creates a new admin user' do
      user = User.new
      user.email = 'b@b.com'
      user.password = 'Password10'
      user.profile = Admin.create(
        username: 'admin!'
      )
      post '/signup', params: user.to_json, headers: { "Content-Type": 'application/json' }
      expect(response).to have_http_status(200)
    end
  end
end
