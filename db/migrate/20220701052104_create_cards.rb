class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string  :name, null: false
      t.text    :description, null: false
      t.string :annual_fee, null: false
      t.string :Reduction_rate, null: false
      t.string  :point, null: false
      t.string  :image_id
      t.timestamps
    end
  end
end
