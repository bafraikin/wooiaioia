Rails.application.routes.draw do

  root to: "home#index" 

  get '/:name', to: 'journal#index'

  namespace :bitume do
    get '/:id' => '/journal#arti', as: 'art'
  end

  namespace :wooiaioia do
  get '/:id' => '/journal#arti', as: 'art'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
