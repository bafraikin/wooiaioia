Rails.application.routes.draw do
  get 'journal/woo_index'
  root to: 'home#index_woh'
  get '/woo/:name', to: 'journal#woo_arti', as: 'woo_art' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
