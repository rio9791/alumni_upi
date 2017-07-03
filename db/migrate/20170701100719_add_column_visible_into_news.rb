class AddColumnVisibleIntoNews < ActiveRecord::Migration
  def change
    add_column :news, :visible, :boolean, default: true
  end
end
