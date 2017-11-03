Rails.application.routes.draw do
  root to: 'themes#index'

  resources :themes, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
