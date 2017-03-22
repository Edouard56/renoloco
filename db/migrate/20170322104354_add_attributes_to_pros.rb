class AddAttributesToPros < ActiveRecord::Migration[5.0]
  def change
    add_column :pros, :pro_company_name, :string
    add_column :pros, :address, :string
    add_column :pros, :latitude, :float
    add_column :pros, :longitude, :float
    add_column :pros, :contact_first_name, :string
    add_column :pros, :contact_last_name, :string
    add_column :pros, :contact_position, :string
    add_column :pros, :contact_phone_number, :string
  end
end
