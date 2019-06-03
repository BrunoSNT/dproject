class CreateAdvertises < ActiveRecord::Migration[5.2]
  def change
    create_table :advertises do |t|
      t.string :title
      t.text :description
      t.datetime :release
      t.datetime :end
      t.float :price
      t.integer :adv_type
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
