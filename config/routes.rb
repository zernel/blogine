Blogine::Engine.routes.draw do
  root to: 'public#home_page'

  namespace :admins do
    root to: 'articles#index'

    resources :categories
    resources :articles
  end
end
