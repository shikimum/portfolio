class UserSessionsController < ApplicationController
skip_before_action :require_login, only: %i[new create]
  
def new; end
  #入力した情報を残しておく処理をする。
def create
  @user = login(params[:email], params[:password])

    if @user
      redirect_to rankings_path, success: t('user_sessions.create.success')
    else
      flash.now[:danger] = t('user_sessions.create.failure')
      render :new, status: :unprocessable_entity
    end
end

  def destroy
    logout
    redirect_to root_path, status: :see_other, danger: t('user_sessions.destroy.success')
  end
end  