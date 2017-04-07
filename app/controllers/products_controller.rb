class ProductsController < ApplicationController
	def show
		@product = Product.find(params[:id])
	end

	def new
	end

	def create
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update_attributes(product_params)
			# Handle a successful update.
			flash[:success] = t(:profile_updated)
			redirect_to @product
		else
			render 'edit'
		end
	end

	private
		#prevent mass assignment vulnerability
		def product_params
			params.require(:product).permit(:name, :description_en, :description_pt,
											:category, :status)
		end

end
