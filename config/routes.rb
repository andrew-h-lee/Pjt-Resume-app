BasicStarterTemplate::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :project_images

  resources :projects

  resources :personal_infos

  devise_for :users
  root :to => 'home#index'
end
