Rails.application.routes.draw do

  resources :athletes, only: [:index, :show, :destroy] do
    resources :workouts, only: [:index, :show]
  end

  resources :workouts, only: [:index, :show, :create]

  resources :coach, only: [], controller: 'workouts', as: 'coach' do
    resources :workouts, only: [:new, :create, :edit, :update, :destroy]
  end

  get 'skills/targets', :to => 'skills#targets'
  get 'skills/:target', :to => 'skills#index', as: 'skills_target'
  get 'skill/:id', :to => 'skills#show', as: 'skill'

  resources :skills, only: [:show]


  devise_for :users, :controllers => { registrations: 'registrations', :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "application#home"

  patch 'workouts/:id/complete', :to => 'workouts#complete', as: 'workouts_complete'
end
