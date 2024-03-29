class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.fatigue_type_id = session[:fatigue_type_id]
    if @user.save
      auto_login(@user)
      redirect_to rankings_path, success: t('users.create.success')
    else
      flash.now[:danger] = t('users.create.failure')
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:users_name, :email, :password, :password_confirmation)
  end
end