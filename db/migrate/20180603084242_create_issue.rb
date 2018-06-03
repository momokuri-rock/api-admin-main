class CreateIssue < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :name, null: false
      t.integer :size_cd
      t.integer :page
      t.integer :color_type_cd
      t.integer :count
      t.integer :price
      t.integer :class_cd
      t.datetime :published_at, null: false
      t.string :remarks
    end
  end
end
