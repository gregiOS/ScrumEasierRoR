ScrumApp::Application.routes.draw do
  resources :tasks

  resources :sprints

  resources :registrations

    get 'admin' => 'admin#index'
    controller :sessions do
      get  'login' => :new
      post 'login' => :create
      delete 'logout' => :destroy
    end

  namespace :api do
    resources :projects
  end

  get "admin/index"
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  resources :users

  resources :projects
  get 'addUser', to: 'projects#index'
  root 'projects#index'

get "product_owner/index", to: "product_owner#index", as: "product_owner"
end
