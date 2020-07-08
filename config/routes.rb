Rails.application.routes.draw do
  
  # resources :users
  root "users#index"

  get    '/users'    , to: 'users#index', as: "user_manager"
  get    '/login'    , to: 'users#login', as: "user_login"
  get    '/user/new' , to: 'users#new', as: "new_user"
  post   '/users'    , to: 'users#create'
  get    '/user/:id' , to: 'users#edit', as: "edit_user"
  patch  '/user/:id' , to: 'users#update'
  put    '/user/:id' , to: 'users#update'
  delete '/user/:id' , to: 'users#destroy', as: "user"

  get    '/user/:user_id/workspaces'     , to: 'workspaces#workspace_manager', as: "workspace_manager"
  # get    '/user/:user_id/workspaces'     , to: 'workspaces#index', as: "workspace_manager"
  get    '/user/:user_id/workspaces/new' , to: 'workspaces#new', as: "new_workspace"
  post   '/user/:user_id/workspaces/new' , to: 'workspaces#create'
  get    '/user/:user_id/workspaces/:id' , to: 'workspaces#edit', as: "edit_workspace"
  patch  '/user/:user_id/workspaces/:id' , to: 'workspaces#update', as: "update_patch_workspace"
  put    '/user/:user_id/workspaces/:id' , to: 'workspaces#update', as: "update_put_workspace"
  delete '/user/:user_id/workspaces/:id' , to: 'workspaces#destroy', as: "destroy_workspace"

  get    '/user/:user_id/workspaces/:workspace_id/nodes/new' , to: 'nodes#new', as: "nodes"
  get    '/user/:user_id/workspaces/:workspace_id/nodes/new' , to: 'nodes#new', as: "new_node"
  post   '/user/:user_id/workspaces/:workspace_id/nodes/new' , to: 'nodes#create'
  get    '/user/:user_id/workspaces/:workspace_id/nodes/:id' , to: 'nodes#edit', as: "edit_node"
  patch  '/user/:user_id/workspaces/:workspace_id/nodes/:id' , to: 'nodes#update', as: "update_patch_node"
  put    '/user/:user_id/workspaces/:workspace_id/nodes/:id' , to: 'nodes#update', as: "update_put_node"
  delete '/user/:user_id/workspaces/:workspace_id/nodes/:id' , to: 'nodes#destroy', as: "destroy_node"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
