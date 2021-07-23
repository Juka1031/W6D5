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

    def new

        @color = Cat.color
       render :new
    end

    def create
        @age = Cat.find(params[:id]).age #check later
        @cat = Cat.new(cat_params)
        if @cat.persisted?
            redirect_to cat_url(@cat)
        else
            render :new
        end
        
    end

    def edit
        @color = Cat.color
        @cat = Cat.find(params[:id])
        render :edit
    end

    private

    def cat_params
        params.require(:cat).permit(:name, :birthdate, :sex, :color, :description)
    end
end

=begin
    <form action="<%= cats_url %>" method= "POST">

    <label>Name:
        <input type="text" name="cats[name]">
    </label>

    <label>Purrrthday:
        <input type="date" name="cats[birthdate]">
    </label>

    <label for="color">Color:
        <select id = "color" name="cats[color]">
                <option value="default">Select a Color</option>
            <%@color.each do |color|%>
                <option value="<%color%>"><%=color%></option>
            <%end%>
        </select>
    </label>
    <label>Sex:
        <label for="Male">Male:
            <input type="radio" id="Male" name="sex" value = "M">
        </label>
        <label for="Female">Female:
            <input type="radio" id="Female" name="sex" value = "F">
        </label>
    </label>
    <label>Description:    
        <textarea name="cats[description]" ></textarea>
    </label>



    <button>Click me</button>
</form>

    
=end