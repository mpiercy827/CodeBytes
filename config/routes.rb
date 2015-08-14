Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: {format: :json} do
    resources :courses, only: [:index, :show]
    resources :topics, only: [:index, :show]
    resources :exercises, only: [:index, :show] do
      get 'check' => "exercises#check"
    end
  end

  root to: "static_pages#root"
end
