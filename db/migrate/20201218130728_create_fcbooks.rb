class CreateFcbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :fcbooks do |t|
      t.string :title
      t.text :content
      t.text :image
      t.timestamps
    end
  end
end
