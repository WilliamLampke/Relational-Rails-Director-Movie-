class CreateDirector < ActiveRecord::Migration[5.2]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :hometown
      t.integer :birthyear
      t.boolean :alive
      t.timestamps
    end
  end
end
