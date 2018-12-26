class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :passwd
      t.string :phone
      t.integer :sex
      t.text :address
      t.text :friends
      t.integer :province

      t.timestamps
    end
  end
end
