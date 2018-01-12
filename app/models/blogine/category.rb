module Blogine
  class Category < ApplicationRecord
    has_many :articles
  end
end
