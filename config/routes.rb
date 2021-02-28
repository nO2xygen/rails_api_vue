Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :records
      resources :artists
    end
  end

  root to: 'home#index'
  post 'refresh', to: 'refresh#create'# post 'refresh', controller: :refresh, action: :create 
  post 'signup', to: 'signup#create'# post 'signup', controller: :signup, action: :create 
  post 'signin', to: 'signin#create'# post 'signin', controller: :signin, action: :create
  delete 'signin', to: 'signin#delete'# delete 'signin', controller: :signin, action: :destroy  
end
