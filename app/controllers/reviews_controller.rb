class ReviewsController < ApplicationController
skip_before_action :require_login, only: %i[index]

  def index
    @reviews = Review.all.includes(:user)
  end


  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.build(review_params)
    if @review.save
      redirect_to reviews_path, success: t('defaults.flash_message.created', item: Review.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_created', item: Review.model_name.human)
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :body)
  end
end
