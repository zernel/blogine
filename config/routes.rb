Blogine::Engine.routes.draw do
  root to: 'public#home_page'

  namespace :admins do
    root to: 'articles#index'

    resources :categories
    resources :articles
  end

  get 'categories/:slug', to: 'public#category', as: :category
  get ':slug', to: 'public#article', as: :article
end
