module Blogine
  class PublicController < ApplicationController
    def home_page
      @last_article = Blogine::Article.first
      @recent_articles = Blogine::Article.first(8)
      @categories = Blogine::Category.all
    end
  end
end
