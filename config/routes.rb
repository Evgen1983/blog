Rails.application.routes.draw do
  get 'pages/about'

  get 'pages/portfolio'

  resources :posts do
  	resources :comments
  end
  root "posts#index"
end
