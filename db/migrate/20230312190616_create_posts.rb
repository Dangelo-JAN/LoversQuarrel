class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.text :content
      t.references :user, index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
