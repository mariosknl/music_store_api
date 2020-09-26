class SessionsController < Devise::SessionsController
  def create
    @user = User.where(profile: Admin.where(username: params[:admin][:username]))[0] if params[:admin]
    @user = User.where(profile: Guest.where(username: params[:guest][:username]))[0] if params[:guest]

    if @user.valid_password?(sign_in_params[:password])
      token = encode_token({ user_id: @user.id, token: 'token' })
      cookies[:token] = { value: token, httponly: true, same_site: :none }
      render 'sessions/logged?.json.jbuilder'
    else
      render json: { message: 'Wrong email or password' }
    end
  end

  def logged?; end

  def delete; end
end
