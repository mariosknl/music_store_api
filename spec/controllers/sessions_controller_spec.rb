require 'rails_helper'

RSpec.describe 'User sessions', type: :request do
  describe 'POST sessions#create' do
    it 'logs in a user' do
      user = { guest: { username: 'user10', password: '000000' } }

      post '/login', params: user.to_json, headers: {
        "Content-Type": 'application/json'
      }
      get 'http://localhost:3000/login'
      expect(response).to have_http_status(200)
    end

    it 'returns the user data if user logged in' do
      user = { guest: { username: 'user10', password: '000000' } }

      get '/loggeduser', params: user.to_json, headers: {
        "Content-Type": 'application/json'
      }
      get 'http://localhost:3000/login'
      expect(response).to have_http_status(200)
    end
  end
end
