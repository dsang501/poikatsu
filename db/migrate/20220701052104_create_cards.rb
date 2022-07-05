class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string  :name, null: false
      t.text    :description, null: false
      t.integer :annual_fee, null: false
      t.integer :Reduction_rate, null: false
      t.string  :point, null: false
      t.string  :image_id
      t.timestamps
    end
  end
end
