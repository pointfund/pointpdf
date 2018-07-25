class CreateLayouts < ActiveRecord::Migration[5.2]
  def change
    create_table :layouts do |t|
      t.string :name
      t.integer :posx
      t.integer :posy
      t.integer :page_part_id

      t.timestamps
    end
  end
end
