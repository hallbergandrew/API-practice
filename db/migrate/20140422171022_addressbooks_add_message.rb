class AddressbooksAddMessage < ActiveRecord::Migration
  def change
    add_column :addressbooks, :text, :message
  end
end
