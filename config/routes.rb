Rails.application.routes.draw do
  
  devise_for :users
  
  root 'home#index'
  post '/tinymce_assets' => 'tinymce_assets#create'
  get 'home/index'
  get 'home/write'
  post 'home/write_ok'
  
  get 'home/list'
  
  get 'home/detail'
  get 'home/detail/:id' => 'home#detail'
  
  get 'home/delete'
  get 'home/delete/:id' => 'home#delete'
  
  get 'home/update'
  get 'home/update/:id' => 'home#update'
  
  post 'home/update_ok/:id' => 'home#update_ok'
  
  post 'home/reply_ok/:id' => 'home#reply_ok'
  
  get 'home/reply_del/:id' => 'home#reply_del'
  
  get 'home/reply_update' => 'home#reply_update'
  get 'home/reply_update/:id' => 'home#reply_update'
  
  post 'home/reply_update_ok/:id' => 'home#reply_update_ok'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

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
