Rails.application.routes.draw do
  devise_for :users

  # resource  :session
  resources :examples

  resources :messages do
    resources :comments
  end

  root to: 'examples#index'
end
