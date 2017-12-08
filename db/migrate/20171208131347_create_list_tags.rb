class CreateListTags < ActiveRecord::Migration[5.1]
  def change
    create_table :list_tags do |t|
      t.string :title

      t.timestamps
    end
  end
end
