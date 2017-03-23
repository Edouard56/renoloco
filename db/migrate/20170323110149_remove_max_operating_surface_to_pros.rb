class RemoveMaxOperatingSurfaceToPros < ActiveRecord::Migration[5.0]
  def change
    remove_column :pros, :max_operating_surface, :string
  end
end
