Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  get '/', to: redirect('/top/index')

  get 'top/index'

  resources :incomes, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :outcomes, only: [:index, :new, :create, :edit, :update, :destroy]

  get 'income_items/new', to: 'income_items#new'
  post 'income_items/create', to: 'income_items#create'

  get 'outcome_items/new', to: 'outcome_items#new'
  post 'outcome_items/create', to: 'outcome_items#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
