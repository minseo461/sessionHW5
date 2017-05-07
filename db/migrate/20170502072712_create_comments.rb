class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :content_id
      t.text :body
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
