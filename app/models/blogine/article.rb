module Blogine
  class Article < ApplicationRecord
    belongs_to :category

    validates_presence_of :title, :category
  end
end
