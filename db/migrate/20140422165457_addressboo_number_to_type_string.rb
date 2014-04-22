class AddressbooNumberToTypeString < ActiveRecord::Migration
  def change
    remove_column :addressbooks, :number
    add_column :addressbooks, :number, :string
  end
end
