class AddColumnNimIntoAlumnis < ActiveRecord::Migration
  def change
    add_column :alumnis, :nim, :string
  end
end
