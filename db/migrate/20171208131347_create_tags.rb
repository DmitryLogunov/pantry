class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tag_references do |t|
      t.string :title

      t.timestamps
    end
  end
end
