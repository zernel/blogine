Blogine::Engine.routes.draw do
  root to: 'public#home_page'

  get '/admin', to: redirect('/admins')
  namespace :admins do
    root to: 'posts#index'
  end
end
