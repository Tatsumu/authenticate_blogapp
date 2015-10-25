class CreateFavoriteComments < ActiveRecord::Migration
  def change
    create_table :favorite_comments do |t|
      t.string :body
      t.references :comment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
