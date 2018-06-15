Rails.application.routes.draw do
  get 'dashboard/index'
  root 'dashboard#index'

  resources :scenarios
  resources :scores
  resources :people
  resources :point_of_interests

  post :create_task_file, to: 'scenarios#create_task_file'
end
