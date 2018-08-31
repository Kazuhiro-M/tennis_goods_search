Rails.application.routes.draw do
  get 'player_search/show'
  post 'player_search/search'
  get 'select_item/show'
  post 'select_item/search'
  get 'result/show'
  get 'maker_search/show'
  post 'maker_search/search'
  resources :rackets
  resources :rankings
  resources :players
  resources :series
  resources :makers
  devise_for :users, :controllers => {
  :registrations => "registrations"
  }
  root 'static_pages#home'
end
