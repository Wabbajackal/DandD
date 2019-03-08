class RenameType < ActiveRecord::Migration[5.2]
  def change
    rename_column :materials, :type, :mat_type
  end
end
