class CreateOfficialReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :official_reviews do |t|
      t.references :client, foreign_key: true
      t.integer :official_rating
      t.text :official_review

      t.timestamps
    end
  end
end
