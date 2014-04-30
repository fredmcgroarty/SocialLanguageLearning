Rails.application.routes.draw do


  get 'messages/index'

  get 'messages/new'

  get 'messages/edit'

  get 'messages/create'

  get 'messages/destroy'

  get 'messages/update'

  get 'conversations/index'

  get 'conversations/new'

  get 'conversations/edit'

  get 'conversations/create'

  get 'conversations/destroy'

  get 'conversations/update'

  get 'user_infos/new'

  get 'user_infos/show'

  get 'user_infos/create'

  get 'user_infos/edit'

  get 'user_infos/update'

  get 'user_infos/destroy'

  get 'user_infos/index'

  get 'registrations/after_sign_up_path_for'

  root 'home#welcome'

  devise_for :users
  resources :users do
    resources :bookings
  end
  
  resources :messages do
    member do
      post :new
    end
  end
  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
    collection do
      get :trashbin
      post :empty_trash
    end
  end

  resources :user_profiles, only: [:show, :new, :create]
  resource :user_profile, only: [:edit, :update]

  resources :user_infos
  resources :languages
  resources :topics


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
