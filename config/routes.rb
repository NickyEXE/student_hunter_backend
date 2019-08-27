Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/last', to: 'locations#show'
  post '/last', to: 'locations#create'
end
