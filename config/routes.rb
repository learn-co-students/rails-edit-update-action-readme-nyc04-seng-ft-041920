Rails.application.routes.draw do
  # resources :articles, only: [:index, :show, :new, :create, :edit, :update]

  get "/articles", to: "articles#index"
  get "/articles/new", to: "articles#new", as: :new_article
  
  get "/articles/:id", to: "articles#show", as: :article
  post "/articles", to: "articles#create"

  get "/articles/:id/edit", to: "articles#edit", as: :edit_article
  patch "/articles/:id", to: "articles#update"
end
