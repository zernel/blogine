module Blogine::Admins
  class ArticlesController < ApplicationController
    before_action :find_article, only: [:edit, :update, :destroy]

    def index
      @articles = Blogine::Article.all
    end

    def new
      @article = Blogine::Article.new
    end

    def create
      @article = Blogine::Article.new(article_params)
      if @article.save
        flash[:notice] = "Created article successfully."
        redirect_to admins_articles_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @article.update_attributes(article_params)
        flash[:notice] = "Updated article successfully."
        redirect_to admins_articles_path
      else
        render :edit
      end
    end

    def destroy
      @article.destroy
      flash[:notice] = "Deleted article successfully."
      redirect_to admins_articles_path
    end

    private
    def article_params
      params.require(:article).permit(:category_id, :title, :release_date, :content)
    end

    def find_article
      @article = Blogine::Article.find(params[:id])
    end
  end
end
