# This migration comes from blogine (originally 20180111144635)
class CreateBlogineCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :blogine_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
