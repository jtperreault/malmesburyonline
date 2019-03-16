class CreateWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :walks do |t|
      t.string :name
      t.text :description
      t.date :date_from
      t.date :date_to

      t.timestamps
    end
  end
end
