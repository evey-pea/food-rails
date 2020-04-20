class FoodsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @foods = Food.all.order("id")
    end

    def new
        
    end

    def create
        new_food = Food.create(
            name: params["name"],
            calories: params["calories"].to_i
        )
        redirect_to food_index_path
    end


    def show
        @food = Food.find(params["id"])
    end

    
    def edit
        @food = Food.find(params["id"])
    end

    def update
        updated_food = Food.update(
            params["id"], 
            name: params["name"], 
            calories: params["calories"]
        )
        redirect_to food_index_path(params["id"])
    end

    def destroy
        @food = Food.find(params["id"])
        @food.destroy

        redirect_to food_index_path
    end
end