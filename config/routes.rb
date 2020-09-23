Rails.application.routes.draw do
  resources :expenses
  resources :budgets, except: [:delete]
  
  delete '/budgets', to: 'budgets#delete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
