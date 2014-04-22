class AddressbookNumberBackToInteger < ActiveRecord::Migration
  def change
    remove_column :addressbooks, :number
    add_column :addressbooks, :number, :int
  end
end
