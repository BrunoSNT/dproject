class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :first_nickname
      t.string :last_nickname
      t.string :email
      t.string :phone
      t.string :cell_phone
      t.date :birthday
      t.integer :cpf
      t.integer :rg
      t.text :description
      t.string :instgram_url
      t.string :twitter_url

      t.timestamps
    end
  end
end
