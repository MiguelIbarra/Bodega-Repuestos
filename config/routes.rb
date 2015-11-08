Rails.application.routes.draw do
  devise_for :usuarios
  resources :repuesto_bolets
  resources :bolets
  resources :clientes
  resources :repuestos
  resources :equipos
  get 'inicio/index'
  root :to =>'inicio#index'

end
