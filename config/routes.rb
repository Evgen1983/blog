Rails.application.routes.draw do
  
  root               'posts#index'
  get 'about'     => 'pages#about'
  get 'portfolio' => 'pages#portfolio'
  get 'signup'    => 'users#new'


  resources :posts do
  	resources :comments
  end
  
end
