class RankingsController < ApplicationController
  def index
    @ranking = Manga.left_joins(:likes).group(:id).order('COUNT(likes.id) DESC').limit(10)
  end
end
