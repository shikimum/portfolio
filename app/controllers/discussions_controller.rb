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
      puts @discussion.errors.inspect
      flash.now[:danger] = t('defaults.flash_message.not_created', item: Discussion.model_name.human)
      render :new, status: :unprocessable_entity
    end
  end
  
  private

  def discussion_params
    params.require(:discussion).permit(:title, :volume, :body)
  end
end

