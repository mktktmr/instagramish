class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.string :image_url

      t.timestamps null: false
    end
  end
end
