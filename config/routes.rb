Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get 'welcome', to: 'home#index'

  get 'articles', to: 'articles#index'
  get 'articles/new', to: 'articles#new', as: :new_article
  get 'articles/:id', to: 'articles#show'
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article

  post 'articles', to: 'articles#create'
  patch 'articles/:id', to: 'articles#update', as: :article
  delete 'articles/:id', to: 'articles#delete'
end
