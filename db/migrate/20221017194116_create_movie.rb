class CreateMovie < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :movietitle
      t.string :genre
      t.integer :boxoffice
      t.boolean :profitable
      t.timestamps
    end
  end
end
