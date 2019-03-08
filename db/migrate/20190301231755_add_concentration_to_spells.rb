class AddConcentrationToSpells < ActiveRecord::Migration[5.2]
  def change
    add_column :spells, :concentration, :string
  end
end
