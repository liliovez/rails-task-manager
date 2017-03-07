Rails.application.routes.draw do
  get 'tasks', to: "tasks#index"

  post 'tasks', to: "tasks#create"

  get 'tasks/new', to: "tasks#new"



  get 'tasks/:id/edit', to: "tasks#edit", as: :edit_task

  get 'tasks/:id', to: 'tasks#show'

  patch 'tasks/:id',  to: "tasks#update", as: :update_task

  delete 'task/:id', to:'tasks#destroy', as: :destroy_task



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
