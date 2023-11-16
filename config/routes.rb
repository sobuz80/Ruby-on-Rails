# config/routes.rb
Rails.application.routes.draw do
    get 'home/index'
    get 'about/index'
    get 'portfolio/index'
  
    root 'home#index'
    resources :home, only: [:index, :show]

  end
  