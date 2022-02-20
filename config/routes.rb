Rails.application.routes.draw do
  devise_for :users

  def after_sign_out_path_for(resource_or_scope)
    new_user_registration_path
   end

  # devise_scope :user do
  #   # Redirests signing out users back to sign-in
  #   get "users", to: "devise/sessions#new"
  # end

  # devise_scope :user do  
  #   get '/users/sign_out' => 'devise/sessions#destroy'     
  # end

  # resources :users, only: [:show] tells Rails to map requests to http://localhost:3000/users/:id to the user controller's show action, with :id is ID of current user. If ID of current user is 1, path point to user profile page is http://localhost:3000/users/
  resources :users, only: [:show]
  
  resources :posts

  # Defines the root path route ("/")
  root 'posts#index'
end
