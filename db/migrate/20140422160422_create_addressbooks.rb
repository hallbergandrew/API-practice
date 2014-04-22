class CreateAddressbooks < ActiveRecord::Migration
  def change
    create_table :addressbooks do |t|
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :firstname
      t.string :lastname
      t.integer :number
      t.integer :message_id

      t.timestamps
    end
  end
end
