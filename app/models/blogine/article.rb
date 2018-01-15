module Blogine
  class Article < ApplicationRecord
    belongs_to :category

    validates_presence_of :title, :category, :release_date

    default_scope  -> { order("release_date DESC, id DESC") }
    after_initialize :set_defaults

    private
    def set_defaults
      self.release_date = Date.today unless self.release_date.present?
    end
  end
end
