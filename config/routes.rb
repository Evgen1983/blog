Rails.application.routes.draw do
  
  get 'sessions/new'

  root               'posts#index'
  get 'about'     => 'pages#about'
  get 'portfolio' => 'pages#portfolio'
  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get "sitemap.xml" => "home#sitemap", format: :xml, as: :sitemap
  get "robots.txt" => "home#robots", format: :text, as: :robots

  

  resources :users

  resources :posts do
  	resources :comments
  end
  
end
