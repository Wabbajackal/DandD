class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :name
      t.references :rarity, foreign_key: true
      t.string :description
      t.string :durability
      t.string :threshold
      t.string :natural
      t.string :ammunition
      t.string :weapon
      t.string :armor
      t.string :shield

      t.timestamps
    end
  end
end
