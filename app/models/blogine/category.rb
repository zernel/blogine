module Blogine
  class Category < ApplicationRecord
    has_many :articles

    validates_presence_of :name, :slug

    alias_attribute :to_s, :name
  end
end
