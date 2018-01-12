module Blogine::Admins
  class ArticlesController < ApplicationController
    def index
      @articles = Blogine::Article.all
    end
  end
end
