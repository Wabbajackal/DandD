class AddTypeToMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :type, :string
  end
end
