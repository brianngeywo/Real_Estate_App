Rails.application.routes.draw do
  root to: 'home#landing'
  get 'home/index'
  get 'home/infor'
  resources :listings
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
