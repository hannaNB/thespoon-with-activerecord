Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # (>) Method directement incluses avec :
  # resources :restaurants, only: [:index, :show]
  # resources :restaurants, except: [:destroy]
  resources :restaurants
  # Lire tous les restaurants
    # get 'restaurants' => "restaurants#index"
  # Lire un restaurant
    # get 'restaurants/:id' => "restaurants#show"
  # Créer un restaurant (2 requêtes)
    # get 'restaurants/new' => "restaurants#new"
    # post 'restaurants' => "restaurants#create"
  # Updater un restaurant
    # get 'restaurants/:id/edit' => "restaurants#edit"
    # patch 'restaurants/:id' => "restaurants#update" 
  # Supprimer un restaurant
    # delete "restaurants/:id" => "restaurants#destroy"

end
