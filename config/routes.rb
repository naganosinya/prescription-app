Rails.application.routes.draw do
  get 'top/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'microposts#top'
  resources :microposts
end
