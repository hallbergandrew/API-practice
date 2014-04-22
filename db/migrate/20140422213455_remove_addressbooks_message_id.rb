class RemoveAddressbooksMessageId < ActiveRecord::Migration
  def change
    remove_column :addressbooks, :message_id
  end
end
