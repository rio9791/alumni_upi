class AddColumnRecipientIntoDonates < ActiveRecord::Migration
  def change
    add_column :donates, :recipient_name, :string
  end
end
