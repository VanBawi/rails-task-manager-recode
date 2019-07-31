Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks
  get "tasks", to: "tasks#index"
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"

  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"


  get "tasks/:id", to: "tasks#show"

  delete "tasks/:id", to: "tasks#destroy"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
