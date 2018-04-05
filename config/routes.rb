Rails.application.routes.draw do
  get 'passengers/index'

  get 'passenger/index'

  get 'trips/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'home#index'

    resources :trips #, except: [:new]
    resources :passengers do
      resources :trips, only: [:new, :create]
    end
    resources :drivers

end
