Rails.application.routes.draw do
  resources :eventos
  resources :alojamientos
  resources :arrendatarios
  resources :estudiantes
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
