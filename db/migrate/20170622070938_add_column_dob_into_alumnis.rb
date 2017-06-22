class AddColumnDobIntoAlumnis < ActiveRecord::Migration
  def change
    add_column :alumnis, :dob, :date
  end
end
