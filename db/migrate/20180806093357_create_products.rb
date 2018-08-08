class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.float :price
      t.text :desc

      t.timestamps
    end
  end
end
