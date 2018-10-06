class Api::V1::RegistrationsController < Devise::RegistrationsController

  def create
    user = User.new(user_params)
    if user.save
      render json: {
        message: "Signed Up Successfully",
        is_success: true,
        data: {
          user: user
        }
      }, status: :ok
    else
      render json: {
        message: "something wrong",
        is_success: false,
        data: {}
      }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def ensure_params_exit
    return if params[:user].present?
    render json: {
      message: "missing params",
      is_success: false,
      data: {}
    }, status: :bad_request
  end
end
