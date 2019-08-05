Rails.application.routes.draw do
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  get 'sign_up',to: 'users#new'
  post 'log_in', to: 'users#create'
  delete 'log_out', to: 'users#destroy'
end
