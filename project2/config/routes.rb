Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'interview/index', to: 'interview#index'
  get 'interview/filter', to: 'interview#filter'
  
  # Redirect the root URL to interview#index with the "type" parameter set to "phyto"
  root to: 'interview#filter_view'
end
