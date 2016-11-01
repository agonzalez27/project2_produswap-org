Rails.application.routes.draw do

root 'users#index'
  resources :users do
	   resources :posts do
	      resources :messages
    end
	end
  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
