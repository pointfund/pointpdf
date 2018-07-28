Rails.application.routes.draw do
  devise_for :users
  get 'guide/index'
  get 'guide/map'
  get 'guide/start'
  get 'guide/login'
  resources :records
  get 'pdf_pages/index'
  get "reset" => "page_parts#reset"

  get "show_edit" => "contracts#show_edit"
  post "show_edit" => "contracts#show_edit"

  get 'pdf_pages/show'
  get 'pdf_pages/create'


  root "guide#index"

  
  resources :page_layouts
  resources :layouts
  resources :page_parts
  resources :contracts
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
