Rails.application.routes.draw do
  
  # resources :robots

  get 'robots/', to: 'robots#index'

  get 'robots/:id', to: 'robots#show'

  post 'robots/', to: 'robots#create'

  put 'robots/:id', to: 'robots#update'

  delete 'robots/:id', to: 'robots#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
