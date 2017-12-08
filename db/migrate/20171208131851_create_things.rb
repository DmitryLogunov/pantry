class CreateThings < ActiveRecord::Migration[5.1]
  def change
    create_table :things do |t|
      t.string :title
      t.string :description
      t.integer :category_id
      t.integer :storage_id
      t.string :storage_detailed_info
      t.integer :owner_id
      t.date :last_inspect_date
      t.date :expire_date

      t.timestamps
    end
  end
end
