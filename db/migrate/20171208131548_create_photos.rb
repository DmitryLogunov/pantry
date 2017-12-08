class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.integer :thing_id
      t.string :path

      t.timestamps
    end
  end
end
