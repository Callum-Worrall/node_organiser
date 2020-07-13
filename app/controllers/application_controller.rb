class ApplicationController < ActionController::Base

  before_action :set_user
  before_action :set_workspaces

  def set_user
    @user = null

    if(params[:user_id] != null)
      @user = User.all.find(params[:user_id])
    end

  end

  def set_workspaces
    @workspaces = Workspace.all
  end
end
