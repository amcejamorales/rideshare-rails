Rails.application.routes.draw do
  get 'trips/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


    # Routes that operate on the trip collection
    get '/trips', to: 'trips#index', as: 'trips'
    get '/trips/new', to: 'trips#new', as: 'new_trip'
    post '/trips', to: 'trips#create'

    # Routes that operate on individual trips
    get '/trips/:id', to: 'trips#show', as: 'trip'
    get '/trips/:id/edit', to: 'trips#edit', as: 'edit_trip'
    patch '/trips/:id', to: 'trips#update'
    delete '/trips/:id', to: 'trips#destroy'

end
