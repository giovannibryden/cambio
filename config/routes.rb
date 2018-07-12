Rails.application.routes.draw do

resources :emails

  get 'static/landing'
  root 'static#landing'
end
