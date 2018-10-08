Rails.application.routes.draw do


  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }

  root to: "home#index"
  get '/journal/:name', to: 'journal#index'
  resources :articles

  namespace :bitume do
    get '/:id' => '/journal#arti', as: 'art'
  end

  namespace :wooiaioia do
    get '/:id' => '/journal#arti', as: 'art'
  end

  namespace :gc do 
    get '/:id' => '/journal#arti', as: 'art'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
