class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true

      t.timestamps
      t.index [:customer_id, :card_id], unique: true
    end
  end
end
