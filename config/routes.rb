Rails.application.routes.draw do
  resources :job
  get '/' => 'home#index'
  post 'job/create' => 'job#create'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
