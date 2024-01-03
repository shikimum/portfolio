class LikesController < ApplicationController
  before_action :set_user, only: %i[edit update]

  def index
    @user = current_user
    likes = Like.where(user_id: current_user.id).pluck(:manga_id)
    @like_list = Manga.find(likes)  
  end

  def create
    @manga = Manga.find(params[:manga_id])
    current_user.likes.create(manga: @manga)
    redirect_to @manga, notice: 'Manga added to favorites'
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    @manga = @like.manga
    @like.destroy
    redirect_to @manga, notice: 'Manga removed from favorites'
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end
end

