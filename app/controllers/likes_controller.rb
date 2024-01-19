class LikesController < ApplicationController
  def create
    @manga = Manga.find(params[:manga_id])
    current_user.like(@manga)
    respond_to do |format|
      format.html { redirect_to your_result_profile_path, status: :see_other }
      format.turbo_stream
    end
  end

  def destroy
    manga_id = Like.find(params[:id]).manga_id
    @manga = Manga.find(manga_id)
    current_user.unlike(@manga)
    respond_to do |format|
      format.html { redirect_to your_result_profile_path, status: :see_other }
      format.turbo_stream
    end
  end
end
