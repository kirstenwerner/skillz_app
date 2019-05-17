Rails.application.routes.draw do
  resources :skills do
    
  end

  resources :athletes, only: [:index, :show] do
    resources :skills, only: [:index]
  end

  devise_for :users, :controllers => { registrations: 'registrations', :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "application#home"
end
