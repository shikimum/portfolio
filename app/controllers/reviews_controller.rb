class ReviewsController < ApplicationController
  skip_before_action :require_login, only: %i[index]

  def index
    @q = Review.ransack(params[:q])
    @reviews = @q.result(distinct: true).includes(:user)
  end

  def search
    @reviews = Review.ransack(title_cont: params[:q]).result(distinct: true).includes(:user)
    respond_to do |format|
      format.js
    end
  end

  def new
    @review = Review.new
  end

  def create
    manga = Manga.find(review_params[:manga_id])
    @review = current_user.reviews.build(review_params)
    @review.manga = manga
    if @review.save
      redirect_to reviews_path, success: t('defaults.flash_message.created', item: Review.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_created', item: Review.model_name.human)
      render :new, status: :unprocessable_entity
      puts @review.errors.full_messages
    end
  end

  def edit
    @review = current_user.reviews.find(params[:id])
  end

  def update
    @review = current_user.reviews.find(params[:id])
    if @review.update(review_params)
      redirect_to reviews_path(@review), success: t('defaults.flash_message.updated', item: Review.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_updated', item: Review.model_name.human)
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @review = current_user.reviews.find(params[:id])
    @review.destroy!
    redirect_to reviews_path, success: t('defaults.flash_message.deleted', item: Review.model_name.human), status: :see_other
  end

  def search
    @mangas = Manga.where("title like ?", "%#{params[:q]}%")
    respond_to do |format|
      format.js
    end
  end

  private

  def review_params
    params.require(:review).permit(:body, :manga_id)
  end
end
