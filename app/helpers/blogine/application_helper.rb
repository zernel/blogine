module Blogine
  module ApplicationHelper

    def all_categories
      @all_categories ||= Blogine::Category.all
    end
  end
end
