module Blogine
  class Article < ApplicationRecord
    belongs_to :category

    validates_presence_of :title, :category, :date

    default_scope  -> { order("date DESC, id DESC") }
    after_initialize :set_defaults

    private
    def set_defaults
      self.date = Date.today
    end
  end
end
