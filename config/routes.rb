Dislikethis::Application.routes.draw do
  resources :posts do
  	collection do
  		get 'myposts'
  	end

    resources :comments, :only => [:create, :destroy] 
  end

  root :to => "posts#index"
  resources :users, :only => [:index, :show, :edit, :update ]
  match '/auth/:provider/callback' => 'sessions#create'
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
  match '/auth/failure' => 'sessions#failure'
end
