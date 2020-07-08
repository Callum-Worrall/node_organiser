class NodesController < ApplicationController
  before_action :set_node, only: [:show, :edit, :update, :destroy]

  before_action :set_user, only: [:new, :create, :edit, :update, :destroy]

  def index
    @nodes = Node.all
  end

  def show
  end

  def new
    @node = Node.new
    @node.workspace_id = params[:workspace_id]
  end

  def edit
  end

  def create
    @node = Node.new(node_params)

    @workspaces = Workspace.all
    @node.update_attribute(:workspace_id, @workspaces.find(params[:workspace_id]).id)

    respond_to do |format|
      if @node.save
        format.html { redirect_to edit_workspace_path(@user.id, @node.workspace_id), notice: 'Node was successfully created.' }
        format.json { render :show, status: :created, location: @node }
      else
        format.html { render :new }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @node.update(node_params)
        format.html { redirect_to edit_workspace_path(@user.id, @node.workspace_id), notice: 'Node was successfully updated.' }
        format.json { render :show, status: :ok, location: @node }
      else
        format.html { render :edit }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @node.destroy
    respond_to do |format|
      format.html { redirect_to edit_workspace_path(@user.id, @node.workspace_id), notice: 'Node was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_node
      @node = Node.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Only allow a list of trusted parameters through.
    def node_params
      params.require(:node).permit(:name, :description, :workspace_id)
    end
end
