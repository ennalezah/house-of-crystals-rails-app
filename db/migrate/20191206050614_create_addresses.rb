class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :address_type
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
