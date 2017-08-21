Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'books', to: 'books#index'

  # get 'books', to: 'books#index'

  resources :books, only: [:new, :create, :index, :destroy]
end
