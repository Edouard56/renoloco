class AddMaxOperatingSurfaceToPros < ActiveRecord::Migration[5.0]
  def change
    add_column :pros, :max_operating_surface, :integer
  end
end
