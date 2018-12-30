class AddRole < ActiveRecord::Migration[5.2]
  def change
    add_column :webusers, :role, :string
  end
end
