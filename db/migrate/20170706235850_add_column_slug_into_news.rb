class AddColumnSlugIntoNews < ActiveRecord::Migration
  def change
    add_column :news, :slug, :string, unique: true
  end
end
