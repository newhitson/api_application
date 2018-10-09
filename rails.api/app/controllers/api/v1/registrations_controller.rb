class Api::V1::RegistrationsController < Devise::RegistrationsController

  def create
    user = User.new(user_params)
    if user.save
      json_response "Signed Up Successfully", true, {user: user}, :ok
    else
      json_response "Something wrong", false, {}, :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def ensure_params_exist
    return if params[:user].present?
    json_response "missing Params", false, {}, :bad_request
  end
end
