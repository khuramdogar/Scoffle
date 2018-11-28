Rails.application.routes.draw do

  namespace :admin do
    resources :categories do
      resources :items, except:[:index]
    end
  end


  root to: 'page#index'
  resources :menu, only:[:show]
  # get '/menu/coffee', to: 'page#coffees'
  # get '/menu/teas', to: 'page#teas'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
