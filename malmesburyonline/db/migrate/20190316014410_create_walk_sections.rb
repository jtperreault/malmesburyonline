class CreateWalkSections < ActiveRecord::Migration[5.2]
  def change
    create_table :walk_sections do |t|
      t.string :image
      t.text :description
      t.references :walk, foreign_key: true

      t.timestamps
    end
  end
end
