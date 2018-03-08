class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :url
      t.string :type
      t.text :description
      t.integer :rank
      t.text :comment_ids

      t.timestamps
    end
  end
end
