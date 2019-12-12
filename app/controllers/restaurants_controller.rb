class RestaurantsController < ApplicationController
    # appeler une méthode avant action
    before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
    # permet d'enlever une ligne redondante pour les méthodes énoncées
    # ici : "@restaurant = Restaurant.find(params[:id])"
    def index
        @restaurants = Restaurant.all
    end
    def show
        # @restaurant = Restaurant.find(params[:id])
    end
    def new
        @restaurant = Restaurant.new
    end
    # on recupere le hash qui correspond à la clé 'restaurant'
    # on peut le faire car on utilise ("restaurant[name]", etc)
    def create
        restaurant = Restaurant.create(restaurant_params)
        redirect_to restaurants_path
    # redirect_to restaurant_path(restaurant)
    end
    def edit
        # @restaurant = Restaurant.find(params[:id])
    end
    def update 
        # @restaurant = Restaurant.find(params[:id])
        @restaurant.update(restaurant_params)
        redirect_to restaurants_path
    end 
    def destroy
        # @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
        redirect_to restaurants_path
    end

    private
    
    # Quels sont les paramètres autoriser dans le controller 
    
    def restaurant_params
        params.require(:restaurant).permit(:name, :adress, :stars)
    end
    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end
end
