Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get 'welcome', to: 'home#index'
  
  resources :categories
  
  resources :articles do
    get 'user/:user_id', to: 'articles#from_author', on: :collection
  end
end
