class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.integer :tag_id
      t.integer :thing_id

      t.timestamps
    end
  end
end
