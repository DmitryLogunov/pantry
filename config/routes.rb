Rails.application.routes.draw do
  get '/', controller: :home, action: :index
  resources :things
  resources :photos
  resources :storages
  resources :tag_references
  resources :tags
  resources :owners
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
