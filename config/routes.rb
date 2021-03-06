Rails.application.routes.draw do
  resources :users, only: :create
  get 'register', to: 'users#new'

  resource :session, only: [:create, :destroy]
  get 'login', to: 'sessions#new'

  namespace :api, defaults: {format: :json} do
    resources :courses, only: [:index, :show,]
    resources :topics, only: [:index, :show, :create]
    resources :exercises, only: [:index, :show, :create] do
      get 'check' => "exercises#check"
    end
    resources :exercise_completions, only: [:create, :show]
    resources :topic_completions, only: :show
    resources :course_completions, only: :show
    get 'profile', to: 'users#show'
  end

  root to: "static_pages#root"
end
