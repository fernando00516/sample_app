Rails.application.routes.draw do
  get 'static/Pages'

  get 'static/home'

  get 'static/help'

  root 'application#hello'
end
