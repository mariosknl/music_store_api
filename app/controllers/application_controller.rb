class ApplicationController < ActionController::API
  include ActionController::Cookies

  def authenticate_cookie
    token = cookies.signed[:jwt]
    decoded_token = CoreModules::JsonWebToken.decode(token)
    user = User.find_by(id: decoded_token['user_id']) if decoded_token
    user ? true : (render json: { status: 'unauthorized', code: 401 })
  end

  def current_user
    token = cookies.signed[:jwt]
    decoded_token = CoreModules::JsonWebToken.decode(token)
    user = User.find_by(id: decoded_token['user_id']) if decoded_token
    user ? (return user) : (return false)
  end
end
