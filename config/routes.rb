Rails.application.routes.draw do
  get 'timejobs/index'
  resources :job
  post 'job/create' => 'job#create'
  post 'job/:id/update' => 'job#update'
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  get '/' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
