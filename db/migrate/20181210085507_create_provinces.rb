class CreateProvinces < ActiveRecord::Migration[5.2]
  def change
    create_table :provinces do |t|
      t.string :name
      t.text :side_provinces
      t.integer :special_num
      t.float :special_flat

      t.timestamps
    end
  end
end
