Rails.application.routes.draw do
  get 'static/landing'

  root 'static#landing'
end
