class CreateNuggets < ActiveRecord::Migration
  def change
    create_table :nuggets do |t|
      t.string :title
      t.string :body
      t.references :author_id, index: true
      t.references :category_id, index: true
      t.boolean :published

      t.timestamps
    end
  end
end
