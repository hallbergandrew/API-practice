class IntegerToNumericOnAddressbooks < ActiveRecord::Migration
  def change
    remove_column :addressbooks, :number
    add_column :addressbooks, :number, :numeric
  end
end
