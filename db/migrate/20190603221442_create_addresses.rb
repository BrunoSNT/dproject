class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.boolean :helpdesk
      t.string :zip_code
      t.string :country
      t.string :state
      t.string :city
      t.string :complement
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
