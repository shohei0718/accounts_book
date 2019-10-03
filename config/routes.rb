Rails.application.routes.draw do
  get 'top/index'

  get 'incomes/index', to: 'incomes#index'
  get 'outcomes/index', to: 'outcomes#index'

  get 'incomes/new', to: 'incomes#new'
  post 'incomes/create', to: 'incomes#create'

  get 'outcomes/new', to: 'outcomes#new'
  post 'outcomes/create', to: 'outcomes#create'

  get 'income_items/new', to: 'income_items#new'
  post 'income_items/create', to: 'income_items#create'

  get 'outcome_items/new', to: 'outcome_items#new'
  post 'outcome_items/create', to: 'outcome_items#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
