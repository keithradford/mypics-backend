class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :width
      t.integer :height
      t.string :urls

      t.timestamps
    end
  end
end
