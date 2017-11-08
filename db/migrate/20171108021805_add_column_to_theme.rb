class AddColumnToTheme < ActiveRecord::Migration[5.1]
  def change
    add_column :themes, :contents_order, :text
  end
end
