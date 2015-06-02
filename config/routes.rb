Rails.application.routes.draw do
root "oysters#index"

  # Routes for the Oyster resource:
  # CREATE
  get "/oysters/new", :controller => "oysters", :action => "new"
  post "/create_oyster", :controller => "oysters", :action => "create"

  # READ
  get "/oysters", :controller => "oysters", :action => "index"
  get "/oysters/:id", :controller => "oysters", :action => "show"

  # UPDATE
  get "/oysters/:id/edit", :controller => "oysters", :action => "edit"
  post "/update_oyster/:id", :controller => "oysters", :action => "update"

  # DELETE
  get "/delete_oyster/:id", :controller => "oysters", :action => "destroy"
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

# Routes for the Favorites resource:
  # CREATE
  #get "/favorites/new", :controller => "favorites", :action => "new"
  #post "/create_favorites", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  #get "/favorites/:id", :controller => "favorites", :action => "show"

  # UPDATE
  #get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  #post "/update_favorites/:id", :controller => "favorites", :action => "update"

  # DELETE
  #get "/delete_favorites/:id", :controller => "favorites", :action => "destroy"
  #------------------------------


  devise_for :users
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
