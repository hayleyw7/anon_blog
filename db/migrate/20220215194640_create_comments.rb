# migration to create corresponding dbs table

class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|

      t.string :commenter

      t.text :body

      # `:references` keyword - special data type that creates new db column w/ model name + `_id` 
        # to learn more, analyze db/schema.rb after running the migration

       # creates an integer column called `article_id` + index + `foreign_key` constraint pointing to id column of articles table

      t.references :article, null: false, foreign_key: true

      t.timestamps

    end
  end
end
