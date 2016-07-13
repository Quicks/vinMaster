Rails.application.routes.draw do

  namespace :module do
    namespace :performer_manage do
      resources :tender_comments
    end
  end
  namespace :module,path: 'admin' do
    get '/:nick' => 'admin#show',as: 'admin_show'
    namespace :admin_manage,path: 'manage' do
      resources :categories
    end

  end
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }


  root 'home#index'

  get 'home/home'
  get 'home/contacts'

  # resources :users
  # get 'users/show/:nick' => 'users#show', as: 'user_root'

  namespace :module,path: 'performer' do
    get '/:nick' => 'performer#show', as: 'performer_show'

  end

  namespace :module,path: 'customer' do
    get '/:nick' => 'customer#show', as: 'customer_show'
    namespace :customer_manage,path: 'manage' do
      resources :tenders
    end
  end

  get 'cabinet' =>'cabinet#set_cabinet_url',as: 'cabinet'

  get 'geo_json_tender' => 'geojson#get_tenders', as: 'tenders_in_geo_json'
  # root 'application#home'
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
