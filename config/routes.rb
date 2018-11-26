Rails.application.routes.draw do
  root to: 'page#index'
  get '/menu/coffee', to: 'page#coffees'
  get '/menu/teas', to: 'page#teas'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
