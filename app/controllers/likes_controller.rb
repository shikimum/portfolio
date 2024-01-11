class LikesController < ApplicationController
  before_action :set_user, only: %i[create destroy]

  def create
    manga = Manga.find(params[:manga_id])
    current_user.like(manga)
    redirect_back fallback_location: your_result_profile_path
  end

  def destroy
    manga = current_user.likes_mangas.find(params[:manga_id])
    current_user.unlike(manga)
    redirect_back fallback_location: your_result_profile_path
  end

  def likes
    @like_mangas = current_user.likes_mangas.includes(:user)
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end
end
