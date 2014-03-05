BasicStarterTemplate::Application.routes.draw do
  get 'about' => 'about#index'
  resources :project_images

  resources :projects

  resources :personal_infos

  devise_for :users
  root 'home#index'
end
