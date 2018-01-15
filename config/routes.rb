Blogine::Engine.routes.draw do
  root to: 'public#home_page'

  get 'categories/:slug', to: 'public#category', as: :category

  namespace :admins do
    root to: 'articles#index'

    resources :categories
    resources :articles
  end
end
