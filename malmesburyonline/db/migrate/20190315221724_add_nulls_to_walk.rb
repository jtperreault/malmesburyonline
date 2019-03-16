class AddNullsToWalk < ActiveRecord::Migration[5.2]
  def change
    change_column_null :walks, :name,        false
    change_column_null :walks, :description, false
  end
end
