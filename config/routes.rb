Rails.application.routes.draw do

  namespace :admin do
    resources :categories do
      resources :items, except:[:index]
    end
  end


  root to: 'page#index'
  resources :menu, only:[:show]

end
