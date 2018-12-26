class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.string :receiver_name
      t.text :receiver_address
      t.string :receiver_phone
      t.string :sender_name
      t.text :sender_address
      t.string :sender_phone
      t.float :mass
      t.string :pay_id
      t.integer :pay_type
      t.integer :who_pay

      t.timestamps
    end
  end
end
