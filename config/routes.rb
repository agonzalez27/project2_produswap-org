Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'users/' => 'users#index'
  # post 'users/' => 'users#create'
  # get 'users/new' => 'users#new', as: :new_user
  # get 'users/:id' => 'users#show', as: :user
  # get 'users/:id/edit' => 'users#edit', as: :edit_user
  # patch 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'
  resources :users do
	resources :posts do
		resources :messages
end
	end
		end
