Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :groups do
    resources :comments
  end

  get 'index', to: 'welcome#index'

  root 'welcome#index'
end
