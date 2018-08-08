class Admin::CategoriesController < ApplicationController
	layout "admin"

	def index
		@categories = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		cat = Category.new(cat_params)
		if cat.save
			flash[:success] = "Created Successfully!"
			redirect_to admin_categories_path
		else
			flash[:error] = cat.errors.messages
			redirect_to new_admin_category_path
		end
	end

	private
	def cat_params
		params.require(:category).permit(:title)
	end
end
