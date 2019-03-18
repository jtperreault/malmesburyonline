class CreateWalkSectionButtons < ActiveRecord::Migration[5.2]
  def change
    create_table :walk_section_buttons do |t|
      t.string :button_type
      t.string :button_vert_pos
      t.string :button_hor_pos
      t.text :button_text
      t.date :from
      t.date :to
      t.references :Walk_Section, foreign_key: true

      t.timestamps
    end
  end
end
