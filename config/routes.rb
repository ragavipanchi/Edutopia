Rails.application.routes.draw do


  get 'courses/display_courses', as: "display_courses"


  resources :course_attachments
  resources :posts
  resources :comments, only: [:create, :destroy]
  devise_for :users
  resources :users do
    member do
      get :friends
      get :followers
      get :deactivate
      get :mentionable
    end
  end


  authenticated :user , lambda {|u| u.has_role? :admin} do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
      root "admin#index", :as => "admin_root"
      get 'admin/index'
      resources :newsfeeds
      resources :course_categories
      resources :videos
      resources :teachers
      resources :students
      resources :courses
      resources :student_courses
  end
  authenticated :user, lambda {|u| (u.has_role? :college) || (u.has_role? :student)} do
    root to: 'home#home_ui', as: 'test_ui_path'
    get 'home/index', as: 'home'
    resources :events, only: [:index]
  end

  authenticated :user , lambda {|u| u.has_role? :student} do
    get 'courses/display_categories' , as: 'display_categories'
    get 'courses/display_course_attachments' , as: 'display_course_attachments'
  end
  authenticated :user, lambda{|u| u.has_role? :college} do
     resources :events, except: [:edit, :update]
  end
  unauthenticated :user do
    root 'home#front'
  end
  authenticated :user do
    root to: 'home#front', as: 'front'
  end
  match :follow, to: 'follows#create', as: :follow, via: :post
  match :unfollow, to: 'follows#destroy', as: :unfollow, via: :post
  match :like, to: 'likes#create', as: :like, via: :post
  match :unlike, to: 'likes#destroy', as: :unlike, via: :post
  match :find_friends, to: 'home#find_friends', as: :find_friends, via: :get
  get :search_friends, to: 'home#search_friends'
  match :about, to: 'home#about', as: :about, via: :get

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
