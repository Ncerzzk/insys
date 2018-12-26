class AddGoodsStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :goods,"status",:int
  end
end
