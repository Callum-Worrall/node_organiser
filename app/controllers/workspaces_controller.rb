class WorkspacesController < ApplicationController
    
  before_action :set_workspace, only: [:show, :edit, :update, :destroy]
  
  before_action :set_workspaces, only: [:index, :update, :destroy]

  before_action :set_nodes, only: [:index, :show, :new, :edit, :destroy]

  # GET /workspaces
  # GET /workspaces.json
  def index

    @nodeCount = Hash.new

    @workspaces.each { |workspace| @nodeCount[workspace.id] = count_nodes(@nodes, workspace.id) }

  end

  def count_nodes(nodes, workspace_id)
    amount = 0
    nodes.each { |node| amount += 1 if(node.workspace_id == workspace_id) }
    return amount
  end

  # GET /workspaces/1
  # GET /workspaces/1.json
  def show    
  end

  # GET /workspaces/new
  def new
    @workspace = Workspace.new
  end

  # GET /workspaces/1/edit
  def edit
    @nodes = Node.all
  end

  # POST /workspaces
  # POST /workspaces.json
  def create
    @workspace = Workspace.new(workspace_params)

    @authors = Author.all
    @workspace.update_attribute(:author_id, @authors[0].id)

    respond_to do |format|
      if @workspace.save
        format.html { redirect_to @workspace, notice: 'Workspace was successfully created.' }
        format.json { render :show, status: :created, location: @workspace }
      else
        format.html { render :new }
        format.json { render json: @workspace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workspaces/1
  # PATCH/PUT /workspaces/1.json
  def update
    respond_to do |format|
      if @workspace.update(workspace_params)
        format.html { redirect_to @workspace, notice: 'Workspace was successfully updated.' }
        format.json { render :show, status: :ok, location: @workspace }
      else
        format.html { render :edit }
        format.json { render json: @workspace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workspaces/1
  # DELETE /workspaces/1.json
  def destroy
    @workspace.destroy
    respond_to do |format|
      format.html { redirect_to workspaces_url, notice: 'Workspace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

  def set_workspaces
    @workspaces = Workspace.all
  end

  def set_workspace
    @workspace = Workspace.find(params[:id])
  end

  def set_nodes
    @nodes = Node.all
  end

    # Only allow a list of trusted parameters through.
  def workspace_params
    params.require(:workspace).permit(:name, :author_id, :description)
  end

end
