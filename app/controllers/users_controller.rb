class UsersController < ApplicationController
  skip_before_action :authenticate_request

  def create
    @user = User.new(user_params)
    if @user.save
        render :nothing => true, status: :created
     else
        render json: @user.errors, status: :unprocessable_entity
     end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
