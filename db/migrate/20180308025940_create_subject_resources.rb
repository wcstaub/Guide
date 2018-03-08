class CreateSubjectResources < ActiveRecord::Migration[5.1]
  def change
    create_table :subject_resources do |t|
      t.integer :subject_id
      t.integer :resource_id

      t.timestamps
    end
  end
end
