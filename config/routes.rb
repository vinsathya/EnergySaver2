EnergySaver2::Application.routes.draw do
  
  root 'tips#index'

  # Routes for the Task resource:
  # CREATE
  get '/tasks/new', controller: 'tasks', action: 'new', as: 'new_task'
  post '/tasks', controller: 'tasks', action: 'create', as: 'tasks'

  # READ
  get '/tasks', controller: 'tasks', action: 'index'
  get '/tasks/:id', controller: 'tasks', action: 'show', as: 'task'

  # UPDATE
  get '/tasks/:id/edit', controller: 'tasks', action: 'edit', as: 'edit_task'
  patch '/tasks/:id', controller: 'tasks', action: 'update'

  # DELETE
  delete '/tasks/:id', controller: 'tasks', action: 'destroy'
  #------------------------------

  # Routes for the Todolist resource:
  # CREATE
  get '/todolists/new', controller: 'todolists', action: 'new', as: 'new_todolist'
  post '/todolists', controller: 'todolists', action: 'create', as: 'todolists'

  # READ
  get '/todolists', controller: 'todolists', action: 'index'
  get '/todolists/:id', controller: 'todolists', action: 'show', as: 'todolist'

  # UPDATE
  get '/todolists/:id/edit', controller: 'todolists', action: 'edit', as: 'edit_todolist'
  patch '/todolists/:id', controller: 'todolists', action: 'update'

  # DELETE
  delete '/todolists/:id', controller: 'todolists', action: 'destroy'
  #------------------------------

  # Routes for the Tip resource:
  # CREATE
  get '/tips/new', controller: 'tips', action: 'new', as: 'new_tip'
  post '/tips', controller: 'tips', action: 'create', as: 'tips'

  # READ
  get '/tips', controller: 'tips', action: 'index'
  get '/tips/:id', controller: 'tips', action: 'show', as: 'tip'

  # UPDATE
  get '/tips/:id/edit', controller: 'tips', action: 'edit', as: 'edit_tip'
  patch '/tips/:id', controller: 'tips', action: 'update'

  # DELETE
  delete '/tips/:id', controller: 'tips', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'users'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
