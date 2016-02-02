class AddRoleColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer, default: nil
  end
end
