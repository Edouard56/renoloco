class AddPhotoToPro < ActiveRecord::Migration[5.0]
  def change
    add_column :pros, :photo_sup_1, :string
    add_column :pros, :photo_sup_2, :string
    add_column :pros, :photo_sup_3, :string
    add_column :pros, :photo_old_1, :string
    add_column :pros, :photo_old_2, :string
    add_column :pros, :photo_old_3, :string
    add_column :pros, :photo_new_1, :string
    add_column :pros, :photo_new_2, :string
    add_column :pros, :photo_new_3, :string
  end
end
