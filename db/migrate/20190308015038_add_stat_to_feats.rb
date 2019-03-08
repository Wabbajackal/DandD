class AddStatToFeats < ActiveRecord::Migration[5.2]
  def change
    add_column :feats, :feat_stats, :string
  end
end
