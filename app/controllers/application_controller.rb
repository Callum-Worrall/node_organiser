class ApplicationController < ActionController::Base

  before_action :set_user

  def set_user
    @user = null

    if(params[:user_id] != null)
      @user = User.all.find(params[:user_id])
    end
    
  end
end
