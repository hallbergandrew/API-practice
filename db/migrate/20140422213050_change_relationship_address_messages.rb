class ChangeRelationshipAddressMessages < ActiveRecord::Migration
  def change
    remove_column :addressbooks, :message
    add_column :messages, :addressbook_id, :integer
  end
end
