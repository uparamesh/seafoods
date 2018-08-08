Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: "sessions"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  devise_scope :user do
	  get 'admin', to: 'sessions#new'
	end
  namespace :admin do
    resources :dash_board
    resources :products
    resources :categories
  end
  root to: "home#index"
end
