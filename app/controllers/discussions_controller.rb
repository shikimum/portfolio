class DiscussionsController < ApplicationController
  skip_before_action :require_login, only: %i[index]

  def index
    @discussions = Discussion.all.includes(:user)
  end

  def new
    @discussion = Discussion.new
  end

  def create
    @discussion = current_user.discussions.build(discussion_params)
    if @discussion.save
      redirect_to discussions_path, success: t('defaults.flash_message.created', item: Discussion.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_created', item: Discussion.model_name.human)
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @discussion = current_user.discussions.find(params[:id])
  end

  def update
    @discussion = current_user.discussions.find(params[:id])
    if @discussion.update(discussion_params)
      redirect_to discussions_path(@discussion), success: t('defaults.flash_message.updated', item: Discussion.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_updated', item: Discussion.model_name.human)
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    discussion = current_user.discussions.find(params[:id])
    discussion.destroy!
    redirect_to discussions_path, success: t('defaults.flash_message.deleted', item: Discussion.model_name.human), status: :see_other
  end

  private

  def discussion_params
    params.require(:discussion).permit(:title, :volume, :body)
  end
end
