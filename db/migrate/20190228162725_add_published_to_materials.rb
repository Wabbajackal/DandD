class AddPublishedToMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :published, :boolean
  end
end
