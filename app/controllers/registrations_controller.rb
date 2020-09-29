class RegistrationsController < Devise::RegistrationsController
  respond_to :json
  def create
    profile = Admin.create(admin_params) if params[:admin]
    profile = Guest.create(guest_params) if params[:guest]
    @user = User.new(sign_up_params)
    @user.profile = profile

    if @user.save
      token = encode_token({ user_id: @user.id, token: 'token' })
      cookies[:token] = { value: token, httponly: true, same_site: :none }
      render 'registrations/signup.json.jbuilder'
    else
      render json: { message: @user.errors.full_messages }
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:username)
  end

  def guest_params
    params.require(:guest).permit(:username)
  end
end
