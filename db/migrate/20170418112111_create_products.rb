class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :color
      t.string :category
      t.string :sold_out

      t.timestamps
    end
  end
end
