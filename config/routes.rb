Rails.application.routes.draw do

  root 'sessions#landing'
  # post '/' => 'sessions#create_zip'
  get '/post_page' => 'post_page#index'
  get '/about' => 'about#index'
  resources :users do
	   resources :posts do
	      resources :messages
    end
	end
  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  # get '/zip' => 'sessions#landing'
  # post '/zip' => 'sessions#create_zip'
end
