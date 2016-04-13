Rails.application.routes.draw do
  
  root to: 'users#index'

  get 'ajax', to: 'users#ajax', as: 'ajax'

end
