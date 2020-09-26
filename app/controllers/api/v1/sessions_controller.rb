class Api::V1::SessionsController < ApplicationController
  before_action only: [:destroy] do
    authenticate_cookie
  end

  def destroy
    user = current_user
    if user
      cookies.delete(:jwt)
      render json: { status: 'OK', code: 200 }
    else
      render json: { status: 'session not found', code: 404 }
    end
  end

  def create
    username = params['username']
    password = params['password']
    if username && password
      login_hash = User.handle_login(username, password)
      if login_hash
        cookies.signed[:jwt] = { value: login_hash[:token], httponly: true }
        render json: {
          user_id: login_hash[:user_id],
          username: login_hash[:username]
        }
      else
        render json: { status: 'incorrect username or password', code: 422 }
      end
    else
      render json: { status: 'specify username address and password', code: 422 }
    end
  end
end
