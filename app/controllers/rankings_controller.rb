class RankingsController < ApplicationController
  def index
    @ranking = Manga.left_joins(:likes).group(:id).having("COUNT(likes.id > 0)").order('COUNT(likes.id) DESC').limit(3)
  end
end
