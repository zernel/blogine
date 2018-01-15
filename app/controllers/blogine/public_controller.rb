module Blogine
  class PublicController < ApplicationController
    def home_page
      @last_article = Blogine::Article.first
      @recent_articles = Blogine::Article.first(8)
    end

    def category
      @category = Blogine::Category.find_by(slug: params[:slug]) or not_found
      @articles = @category.articles
    end

    def article
      @article = Blogine::Article.find_by(slug: params[:slug]) or not_found
      @category = @article.category
    end
  end
end
