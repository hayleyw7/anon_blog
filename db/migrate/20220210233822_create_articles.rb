class CreateArticles < ActiveRecord::Migration[7.0]
  def change

    # specifies how to construct the articles table

    create_table :articles do |t|

      # columns created with `title:string` & `body:text` in larger Terminal cmd

      t.string :title
      t.text :body

      # 2 columns auto-created: `created_at` & `updated_at`

      t.timestamps
    end

  end
end
