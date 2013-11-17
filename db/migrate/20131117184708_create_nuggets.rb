class CreateNuggets < ActiveRecord::Migration
  def change
    create_table :nuggets do |t|
      t.string :title
      t.string :body
      t.references :user, index: true
      t.references :category, index: true
      t.boolean :published

      t.timestamps
    end
  end
end
