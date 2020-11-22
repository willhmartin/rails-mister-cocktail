Rails.application.routes.draw do
  
  delete "cocktails/:id", to: "cocktails#destroy", as: :destroy_cocktail
  get "cocktails/new", to: "cocktails#new", as: :new
  get "doses/new", to: "doses#new", as: :new_dose
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
end
