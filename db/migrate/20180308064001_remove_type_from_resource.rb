class RemoveTypeFromResource < ActiveRecord::Migration[5.1]
  def change
    remove_column :resources, :type, :string
  end
end
