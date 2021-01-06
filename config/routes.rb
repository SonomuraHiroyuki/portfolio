Rails.application.routes.draw do
   mount ActionCable.server => '/cable'
   devise_for :users
   root  'rooms#show'
   resources :messages, only: :create
   get '/show_additionally', to: 'rooms#show_additionally'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
