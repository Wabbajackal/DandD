class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.integer :level
      t.string :name
      t.string :school
      t.string :casting_time
      t.string :range
      t.string :ritual
      t.string :duration
      t.string :components
      t.string :materials
      t.text :description
      t.string :classes
      t.string :source

      t.timestamps
    end
  end
end
