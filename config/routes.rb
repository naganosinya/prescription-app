Rails.application.routes.draw do
  get '/microposts/create_after', to: 'microposts#create_after'
  get '/microposts/success', to: 'microposts#success'
  get '/microposts/failed', to: 'microposts#failed'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'microposts#top'
  resources :microposts
end
