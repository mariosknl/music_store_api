class RegistrationsController < Devise::RegistrationsController
  def create
    profile = Admin.create(admin_params) if params[:admin]

    @user = User.new(sign_up_params)
    @user.profile = profile

    if @user.save
      render 'registrations/signup.json.jbuilder'
    else
      render json: { message: @user.errors.full_messages }
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:username)
  end
end
