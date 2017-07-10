class AddColumnValidIntoDonates < ActiveRecord::Migration
  def change
    add_column :donates, :is_valid, :boolean, default: false
  end
end
