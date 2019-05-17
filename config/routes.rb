Rails.application.routes.draw do

  resources :workouts
  get 'skills/targets', :to => 'skills#targets'
  get 'skills/:target', :to => 'skills#index', as: 'skills_target'
  get 'skill/:id', :to => 'skills#show', as: 'skill'

  resources :skills, except: [:index]

  resources :athletes do
    resources :skills, only: [:index]
  end

  devise_for :users, :controllers => { registrations: 'registrations', :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "application#home"
end
