Rails.application.routes.draw do
  root to: "homes#top"
  resources :users do
    resource :blood_type, only: :update, controller: 'users/blood_type'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
