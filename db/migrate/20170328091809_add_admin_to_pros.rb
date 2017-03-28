class AddAdminToPros < ActiveRecord::Migration[5.0]
  def change
    add_column :pros, :admin, :boolean, null: false, default: false
  end
end
