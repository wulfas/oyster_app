class FavoritesController < ApplicationController
  def index
    @users = User.all

  end


end
