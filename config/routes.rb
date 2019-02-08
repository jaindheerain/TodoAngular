Rails.application.routes.draw do


  match '/todos' => "todos#options", via: :options
  resources :todos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
