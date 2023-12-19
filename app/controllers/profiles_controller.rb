class ProfilesController < ApplicationController
  before_action :set_user, only: %i[edit update]

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

  def your_result
    # ここでcurrent_userの疲労タイプIDを取得するか、他の方法で適切なIDを取得
    @fatigue_type_id = current_user&.fatigue_type_id

    @mangas = Manga.where(fatigue_type_id: @fatigue_type_id)
    @aromas = Aroma.where(fatigue_type_id: @fatigue_type_id)
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:email, :users_name)
  end
end
