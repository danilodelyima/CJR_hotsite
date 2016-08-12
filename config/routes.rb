Rails.application.routes.draw do

  resources :candidates, except: [:new]

  devise_for :users

  get 'static_pages/landing'
  root 'static_pages#landing'

end
