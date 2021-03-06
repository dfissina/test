Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    collection do
      get 'profile', to: 'users#profile'
      post 'recovery', to: 'users#recovery'
      post 'signup', to: 'users#create'
      post 'activate', to: 'users#activate'
      post 'check_send_documents', to: 'users#check_send_documents'
      post 'exists', to: 'users#exists'
      post 'recoverUser', to: 'users#recoverUser'
    end
    resources :properties
    resources :documents
  end
  
  resources :regions do
  end
   
  resources :comunas do
  end
  
  resources :message_contacts do
  end
  
  resources :likes do
    collection do
      get '/ids', to: 'likes#getAllLikesIds'
      delete '/:property_id', to: 'likes#destroy'
    end
  end
  
  resources :dislikes do
    collection do
      get '/ids', to: 'dislikes#getAllDislikesIds'
      delete '/:property_id', to: 'dislikes#destroy'
    end
  end
  
  resources :favourites do
    collection do
      get '/ids', to: 'favourites#getAllFavouritesIds'
      delete '/:property_id', to: 'favourites#destroy'
    end
  end
  
  resources :properties do
    collection do
      get 'search', to: 'properties#search'
    end
    member do
      put 'views', to: 'properties#views'
      put 'active', to: 'properties#active'
    end
  end
  
  post 'auth/login', to: 'authentication#authenticate'
  
  post 'auth/facebook' => 'authentication#facebook'
  
  get 'statistics', to: 'statistics#index'
  
end
