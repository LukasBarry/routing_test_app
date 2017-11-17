require_relative '../lib/domain_constraint'

Rails.application.routes.draw do
  root 'welcomes#landing'

  devise_for :users

  constraints DomainConstraint.new(Rails.application.secrets[:domain1]) do
    namespace :dashboard do
      root 'businesses#index'
      resources :businesses
    end
  end

  constraints DomainConstraint.new(Rails.application.secrets[:domain2]) do
    namespace :epifany, path: 'dashboard' do
      root 'activities#index'
      resources :activities
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
