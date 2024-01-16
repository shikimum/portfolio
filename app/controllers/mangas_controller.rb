class MangasController < ApplicationController
  def likes
    @like_mangas = current_user.like_mangas.includes(:user)
  end
end
