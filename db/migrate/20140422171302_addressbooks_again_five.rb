class AddressbooksAgainFive < ActiveRecord::Migration
  def change
    add_column :addressbooks, :message, :text
  end
end
