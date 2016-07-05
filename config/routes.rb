Rails.application.routes.draw do
  resources :students, only: [:index, :show]

  # This show route can be refactored into the above resouces' method call above, like so:
  # resources :students, only: [:index, :show]
  # However for the sake of this lab and seeing
  # how you can pass params through the
  # route, we'll keep it explicit and refactor it later

  # resources :students do
  #    resources :activate
  # end

  #get "students/:id/activate", to: "students#activate"
  get 'students/:id/activate', to: 'students#edit', as: 'activate_student'
end
