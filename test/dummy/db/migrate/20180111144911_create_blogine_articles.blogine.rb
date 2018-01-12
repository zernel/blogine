# This migration comes from blogine (originally 20180111144533)
class CreateBlogineArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :blogine_articles do |t|
      t.string :title
      t.datetime :date
      t.text :content
      t.integer :category_id

      t.timestamps
    end
  end
end
