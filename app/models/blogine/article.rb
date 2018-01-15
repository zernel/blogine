module Blogine
  class Article < ApplicationRecord
    belongs_to :category

    validates_presence_of :title, :category, :release_date, :slug

    default_scope  -> { order("release_date DESC, id DESC") }
  end
end
