class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites
  end

  def create
    @favorite = Favorite.new
    @favorite.oyster_id = params[:oyster_id]
    @favorite.user_id = current_user.id
    @favorite.save
    redirect_to :back, notice: "The favorite has been created!"
  end
end


