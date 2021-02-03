Rails.application.routes.draw do
  resources :email_contacts, only: [:new, :create]
  root to: 'pages#home'

  get  'cv', to: 'pages#cv'
  get  'portfolio', to: 'pages#portfolio'
  # get  'contact', to: 'pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
