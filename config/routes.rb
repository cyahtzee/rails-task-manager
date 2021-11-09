Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index', as: 'tasks'
  #create
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

  #show by id
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # #update
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  # #destroy
  delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task'

  # #Show details
  # get '/tasks/:id/details', to: 'tasks#details', as: 'details_task'
end
