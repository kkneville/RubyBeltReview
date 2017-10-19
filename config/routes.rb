Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/new'

  post 'comments/create' => 'comments#create', as: 'add_comment'

  get 'comments/show'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/delete'

  get 'guestlist/index'

  get 'guestlist/new'

  get 'guestlist/create' => 'guestlist#create', as: "join_event"

  get 'guestlist/show'

  get 'guestlist/edit'

  get 'guestlist/update'

  get 'guestlist/delete' => 'guestlist#delete', as: 'leave_event'

  get 'events' => 'events#index', as: 'events'

  get 'events/new'

  post 'events/create' => 'events#create', as: "new_event"

  get 'show/:id' => 'events#show', as: "event_detail"

  get 'events/edit' => 'events#edit', as: 'edit_event'

  get 'events/update'

  delete 'events/delete' => 'event#delete', as: "delete_event"

  get 'sessions/index'

  get 'login' => 'sessions#new', as: 'login_page'

  post 'login' => 'sessions#create', as: 'login'

  get 'sessions/show'

  get 'sessions/edit'

  get 'sessions/update'

  delete 'logout' => 'sessions#destroy', as: 'logout'

  get 'index' => 'users#index', as: 'index'

  get 'register' => 'users#new', as: 'register_page'

  post 'register' => 'users#create', as: 'register'

  get 'showuser' => 'users#show', as: 'user'

  get 'users/edit'

  patch 'users/update' => 'users#update', as: 'update_user'

  get 'users/delete'

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
