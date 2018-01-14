class CreateBlogineCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :blogine_categories do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
  end
end
