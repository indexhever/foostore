class ProductsController < ApplicationController
	before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
	before_action :admin_user, only: [:index, :edit, :update, :destroy]
	def show
		@product = Product.find(params[:id])
	end

	def index
		@search_term = params[:looking_for]
		@products = @search_term ? Product.where(name: @search_term).paginate(page: params[:page]) : Product.paginate(page: params[:page])
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

	def destroy
		Product.find(params[:id]).destroy
		flash[:success] = t(:product_deleted)
		redirect_to request.referrer || root_url
	end

	private
		#prevent mass assignment vulnerability
		def product_params
			params.require(:product).permit(:name, :description_en, :description_pt, :cover, :category, :status)
		end

		# Confirms an admin user.
	    def admin_user
	      redirect_to(root_url) unless current_user.admin?
	    end

end
