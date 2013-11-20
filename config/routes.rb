Dosada::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  # Web services on API domain
   #namespace :api, path: nil, :constraints => { :subdomain => "api" } do
     #resources :posts, only: :index do
       #collection do
         #get 'popular_by_day'
         #get 'popular_by_week'
       #end
     #end
   #end

  namespace :api do
    resources :posts, only: :index, defaults: { format: 'json' } do #za poziv linka bez formata
      collection do
        get 'search_by_word'
      end
    end
  end

  # You can have the root of your site routed with "root"
   root 'home#index'
   resources :sessions, only: [:create, :show]

  # Non-restful routes
   get 'vote_up/:storage_id' => 'home#vote_up', as: :vote_up
   get 'vote_down/:storage_id' => 'home#vote_down', as: :vote_down
   get 'logout' => 'sessions#destroy', as: :log_out

  # Da je bilo member umjesto collection bilo bi:
  #     popular_day_api_v1_post GET  /v1/posts/:id/popular_day(.:format)  api/v1/posts#popular_day {:subdomain=>"api"}
  #     popular_week_api_v1_post GET  /v1/posts/:id/popular_week(.:format) api/v1/posts#popular_week {:subdomain=>"api"}

  # Sa collection:
  #     popular_day_api_v1_posts GET  /v1/posts/popular_day(.:format)  api/v1/posts#popular_day {:subdomain=>"api"}
  #     popular_week_api_v1_posts GET  /v1/posts/popular_week(.:format) api/v1/posts#popular_week {:subdomain=>"api"}

  # rails g controller admin/users if you want a users controller inside of the admin namespace

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
