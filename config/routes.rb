ScrumApp::Application.routes.draw do
  resources :registrations

    get 'admin' => 'admin#index'
    controller :sessions do
      get  'login' => :new
      post 'login' => :create
      delete 'logout' => :destroy
    end

  get "admin/index"
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  resources :users

  resources :projects
  root 'projects#index'
end
