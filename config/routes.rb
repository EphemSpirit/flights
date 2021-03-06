Rails.application.routes.draw do
  root 'home#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :flights, only: [:index, :show] do
        resources :bookings, only: [:index, :show]
      end
    end
  end

  resources :flights, only: [:index]
  resources :bookings, only: [:create, :show, :new]
  # root 'flights#index'
end
