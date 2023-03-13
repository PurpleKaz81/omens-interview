Rails.application.routes.draw do
  get 'interview/index', to: 'interview#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Redirect the root URL to interview#index with the "type" parameter set to "phyto"
  root to: redirect('/interview/index?type=phyto')
end
