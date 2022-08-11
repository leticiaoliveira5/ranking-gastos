Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'

  get :clean, controller: :home

  resources :deputies, only: %i[show]

  resources :expenditures, only: %i[show]
  
  namespace :file_upload do
    get :new
    post :load_data
  end
end
