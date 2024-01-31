class UserSessionsController < ApplicationController
skip_before_action :require_login, only: %i[new create]
  
  def new
    @user = User.new
  end

  def create
    puts "---params---"
    puts params.inspect
    puts "---"
    @user = login(user_login_params[:email], user_login_params[:password])
      if @user
        redirect_to rankings_path, success: t('user_sessions.create.success')
      else
        @user = User.new(email: user_login_params[:email])
        flash.now[:danger] = t('user_sessions.create.failure')
        render :new, status: :unprocessable_entity
      end
  end

  def destroy
    logout
    redirect_to root_path, status: :see_other, danger: t('user_sessions.destroy.success')
  end

  private

  def user_login_params
    params.require(:user).permit(:email, :password)
  end
end  