class DropReplacement < ActiveRecord::Migration[5.1]
  def change
    drop_table :replacements
  end
end
