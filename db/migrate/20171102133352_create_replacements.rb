class CreateReplacements < ActiveRecord::Migration[5.1]
  def change
    create_table :replacements do |t|
      t.string :name, null: false
      t.integer :order, null: false
      t.references :theme, foreign_key: true

      t.timestamps
    end
    add_index :replacements, [:order, :theme_id], unique: true
  end
end
