Rails.application.routes.draw do
  resources :students, only: [:index, :show, :create, :update, :delete]
  resources :instructors, only: [:index, :show, :create, :update, :delete]
end
