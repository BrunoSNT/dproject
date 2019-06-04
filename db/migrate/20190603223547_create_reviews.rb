class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :client, foreign_key: true
      t.integer :rating
      t.text :user_review

      t.timestamps
    end
  end
end
