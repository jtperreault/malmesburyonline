class RemameWalkSectionDescriptionToName < ActiveRecord::Migration[5.2]
  def change
    rename_column :walk_sections, :description, :name
  end
end
