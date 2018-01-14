module Blogine::Admins
  class CategoriesController < ApplicationController
    before_action :find_category, only: [:edit, :update, :destroy]

    def index
      @categories = Blogine::Category.all
    end

    def new
      @category = Blogine::Category.new
    end

    def create
      @category = Blogine::Category.new(category_params)
      if @category.save
        flash[:notice] = "Created category successfully."
        redirect_to admins_categories_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @category.update_attributes(category_params)
        flash[:notice] = "Updated category successfully."
        redirect_to admins_categories_path
      else
        render :edit
      end
    end

    def destroy
      @category.destroy
      flash[:notice] = "Deleted category successfully."
      redirect_to admins_categories_path
    end

    private
    def category_params
      params.require(:category).permit(:name, :slug)
    end

    def find_category
      @category = Blogine::Category.find(params[:id])
    end
  end
end
