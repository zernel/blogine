class CreateBlogineArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :blogine_articles do |t|
      t.string :title
      t.date :release_date
      t.text :content
      t.integer :category_id

      t.timestamps
    end
  end
end
