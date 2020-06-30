Rails.application.routes.draw do
  
  root "workspaces#index"

  get    '/workspaces'     , to: 'workspaces#index'
  get    '/workspaces/new' , to: 'workspaces#new', as: "new_workspace"
  post   '/workspaces'     , to: 'workspaces#create'
  get    '/workspaces/:id/', to: 'workspaces#edit', as: "edit_workspace"
  patch  '/workspaces/:id' , to: 'workspaces#update'
  put    '/workspaces/:id' , to: 'workspaces#update'
  delete '/workspaces/:id' , to: 'workspaces#destroy', as: "workspace"

  get    '/workspaces/:workspace_id/nodes/new' , to: 'nodes#new', as: "nodes"
  get    '/workspaces/:workspace_id/nodes/new' , to: 'nodes#new', as: "new_node"
  post   '/workspaces/:workspace_id/nodes/new' , to: 'nodes#create'
  get    '/workspaces/:workspace_id/nodes/:id' , to: 'nodes#edit', as: "edit_node"
  patch  '/workspaces/:workspace_id/nodes/:id' , to: 'nodes#update', as: "update_patch_node"
  put    '/workspaces/:workspace_id/nodes/:id' , to: 'nodes#update', as: "update_node"
  delete '/workspaces/:workspace_id/nodes/:id' , to: 'nodes#destroy', as: "destroy_node"

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
