class BabyNamesController < ApplicationController
  def new
    @baby_name= BabyName.new(:user_ids => [params[:user_id]])
    @current_user = User.find(params[:user_id])
  end
end
