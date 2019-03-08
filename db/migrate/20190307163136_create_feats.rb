class CreateFeats < ActiveRecord::Migration[5.2]
  def change
    create_table :feats do |t|
      t.string :name
      t.string :source
      t.string :feat_type
      t.text :description

      t.timestamps
    end
  end
end
