module Blogine
  class Article < ApplicationRecord
    belongs_to :category
  end
end
