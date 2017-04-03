class RemoveColumnToPros < ActiveRecord::Migration[5.0]
  def change
    remove_column :pros, :photo_sup_1
    remove_column :pros, :photo_sup_2
    remove_column :pros, :photo_sup_3
    remove_column :pros, :photo_old_1
    remove_column :pros, :photo_old_2
    remove_column :pros, :photo_old_3
    remove_column :pros, :photo_new_1
    remove_column :pros, :photo_new_2
    remove_column :pros, :photo_new_3
  end
end
