Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  get 'cocktails/edit'
  get 'cocktails/destroy'
  get 'cocktails/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do

    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
end
