class AddOffersToPros < ActiveRecord::Migration[5.0]
  def change
    add_column :pros, :operating_radius, :integer
    add_column :pros, :min_operating_surface, :integer
    add_column :pros, :max_operating_surface, :string
    add_column :pros, :furnitures, :boolean
    add_column :pros, :simulation, :boolean
    add_column :pros, :all_works, :boolean
    add_column :pros, :architecte, :boolean
  end
end
