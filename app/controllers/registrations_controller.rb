class RegistrationsController < Devise::RegistrationsController
  def create
    if (params[:admin])
      profile = Admin.create(admin_params)
      @user = User.create(sign_up_params)

      if @user
        render 'registrations/signup.json.jbuilder'
      else
        render json: {message: @user.error.full_messages}
      end
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:username)
  end
end
