Rails.application.routes.draw do
  get 'interview/index', to: 'interview#index', defaults: { type: 'phyto' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'interview#index', type: 'phyto'
end
