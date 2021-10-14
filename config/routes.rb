Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'beers/index'
      post 'beers/create'
      # put 'beers/:id', to: 'beers#update'
      delete 'beers/:id', to: 'beers#destroy'
    end
  end

  root 'beers#index'
  
  # resources :beers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
