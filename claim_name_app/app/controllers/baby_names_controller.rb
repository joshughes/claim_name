class BabyNamesController < ApplicationController
  def new
    @baby_name= BabyName.new(:user_ids => [params[:user_id]])
    @current_user = User.find(params[:user_id])
  end

  def create
    name = BabyName.create(baby_name_params,)
    name.update_attributes(:user_ids => params[:user_id])
    redirect_to user_path(params[:user_id])
  end


  private

    def baby_name_params
      params.require(:baby_name).permit(:name)
    end

end
