class GroceriesController < ApplicationController
	def index
		@groceries=Grocery.all
	end


	def show
		@grocery=Grocery.find(params[:id])
	end

	def new
		@grocery=Grocery.new
	end

	def create
		@grocery=Grocery.create params_handler
		redirect_to grocery_path(@grocery.id) 
	end

	def edit
		@grocery=Grocery.find(params[:id])
	end

	def update
		@grocery= Grocery.find(params[:id])
    	@grocery.update params_handler
    	redirect_to grocery_path(@grocery.id)
    end

    def destroy
    	@grocery=Grocery.find(params[:id]).destroy
    	redirect_to groceries_path
    end

	private
		def params_handler
			   params.require(:grocery).permit(:item, :quantity, :description)
    	end


end
