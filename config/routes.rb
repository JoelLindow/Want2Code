Rails.application.routes.draw do

  resources :coders, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :languages, only: [:index, :new, :create, :destroy]
end
