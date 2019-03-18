class AddForegn2ToWalkSectionButton < ActiveRecord::Migration[5.2]
  def change
    add_column      :walk_section_buttons, :next_walk_section_id,  :bigint
    add_foreign_key :walk_section_buttons, :walk_sections, column: :next_walk_section_id, primary_key: :id
  end
end
