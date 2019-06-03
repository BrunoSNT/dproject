class CreateAdverstiseHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :adverstise_histories do |t|
      t.integer :rating
      t.integer :status
      t.boolean :paid
      t.integer :grade
      t.references :advertise, foreign_key: true

      t.timestamps
    end
  end
end
