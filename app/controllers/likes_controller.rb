class LikesController < ApplicationController
  def create
    @manga = Manga.find(params[:manga_id])
    current_user.like(@manga)
    redirect_to your_result_profile_path, status: :see_other
  end

  def destroy
    @manga = current_user.like_mangas.find_by(params[:manga_id])
    current_user.unlike(@manga)
    redirect_to your_result_profile_path, status: :see_other
  end
end
