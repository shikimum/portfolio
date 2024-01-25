class ProfilesController < ApplicationController
  before_action :set_user, only: %i[edit update change_email update_email]

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to profile_path, success: t('defaults.flash_message_updated')
    else
      flash.now['danger'] = t('defaults.flash_message_not_updated')
      render :edit, status: :unprocessable_entity
    end
  end

  def show; end

  def change_email
    @user = current_user
  end

  def update_email
    if @user.valid_password?(params[:user][:password]) && @user.update(email: params[:user][:email])
      redirect_to profile_path, success: t('defaults.flash_message_email_updated')
    else
      flash.now['danger'] = t('defaults.flash_message_email_not_updated')
      render :change_email, status: :unprocessable_entity
    end
  end

  def your_result
    # ここでcurrent_userの疲労タイプIDを取得するか、他の方法で適切なIDを取得
    @fatigue_type = current_user&.fatigue_type

    if @fatigue_type.present?
      @mangas = Manga.where(fatigue_type: @fatigue_type)
      @aromas = Aroma.where(fatigue_type: @fatigue_type)

      @user_result_url = result_diagnostics_url(your_fatigue_id: @fatigue_type.id)
      @user_result_title = @fatigue_type.name
    end
    respond_to do |format|
      format.html
    end
  end

  def likes
    @like_mangas = current_user.like_mangas
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:email, :users_name, :password)
  end
end
