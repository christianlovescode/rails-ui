Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  root 'home#index'

  get 'components/button', to: 'home#button'
  get 'components/callout', to: 'home#callout'
  get 'components/card', to: 'home#card'
  get 'components/tabs', to: 'home#tabs'
  get 'components/progress', to: 'home#progress'
 
  get '/components', to: redirect('/components/button')

end
