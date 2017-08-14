Rails.application.routes.draw do

  resources :coders, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :languages, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
