Rails.application.routes.draw do
  get 'jobs/index' =>'jobs#index'
  get 'jobs/show' => 'jobs#show'
  get '/' => 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
