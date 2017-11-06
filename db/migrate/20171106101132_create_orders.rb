class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :order, null: false
      t.integer :theme_id
      t.integer :content_id

      t.timestamps
    end
  end
end
