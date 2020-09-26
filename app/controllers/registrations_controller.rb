class RegistrationsController < Devise::RegistrationsController
  def create
    return unless params[:admin]

    profile = Admin.create(admin_params)
    @user = User.new(sign_up_params)
    @user.profile = profile

    if @user.save
      render 'registrations/signup.json.jbuilder'
    else
      render json: { message: @user.error.full_messages }
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:username)
  end
end
