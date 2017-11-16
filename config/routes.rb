Rails.application.routes.draw do
  root 'welcomes#landing'

  devise_for :users
  namespace :dashboard do
    resources :businesses
    resources :activities
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
