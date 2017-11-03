class RemoveIndexToReplacement < ActiveRecord::Migration[5.1]
  def change
    remove_index :replacements, [:order, :theme_id]
  end
end
