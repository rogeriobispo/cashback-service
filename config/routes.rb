Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index', as: 'home'
  resources :offers, only: [:new, :create, :index]
end
