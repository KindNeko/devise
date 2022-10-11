class HomePagesController < ApplicationController
  def index
    @micropost = current_user.microposts.build if user_signed_in?
  end
end
