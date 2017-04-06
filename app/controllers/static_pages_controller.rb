class StaticPagesController < ApplicationController
	#show all products on home page or product searched
	def home
		User.create(name: "Admin User", email: "admin@nuuvem.com", password: "admin123", password_confirmation: "admin")
		@search_term = params[:looking_for]
		@products = @search_term ? Product.where(name: @search_term).paginate(page: params[:page]) : Product.paginate(page: params[:page])
	end
end
