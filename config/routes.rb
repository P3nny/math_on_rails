Rails.application.routes.draw do
  root 'tests#index'
  resources :tests

  get "/tasks", to: "tasks#index"
end
