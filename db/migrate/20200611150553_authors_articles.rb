class AuthorsArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles_authors do |t|
      t.integer :article_id
      t.integer :author_id
    end
  end
end
