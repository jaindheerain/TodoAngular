Rails.application.routes.draw do

  post 'todos/edit/:id', :to => 'todos#editTask'

  post 'todos/delete/:id', :to => 'todos#deleteTask'

  resources :todos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
