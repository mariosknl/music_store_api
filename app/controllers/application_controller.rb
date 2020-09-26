class ApplicationController < ActionController::API
  respond_to :json
  include ActionController::Cookies

  def encode_token(payload)
    JWT.encode(payload, ENV['SECRET_KEY'])
  end
end
