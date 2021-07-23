class CatsController < ApplicationController
    def index
        # debugger
        @cats = Cat.all 
        render :index
    end

    def show
        @cat = Cat.find(params[:id])
        render :show
    end

    private

    def cat_params
        params.require(:cat).permit(:name, :birthdate, :sex, :color, :description)
    end
end