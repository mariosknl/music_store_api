class ApplicationController < ActionController::API
  respond_to :json
  include ActionController::Cookies

  def encode_token(payload)
    JWT.encode(payload, ENV['SECRET_KEY'])
  end

  def decode_token(token:)
    JWT.decode(token, ENV['SECRET_KEY'])
    @user = User.find(token[0]['user_id'])
  end
end
