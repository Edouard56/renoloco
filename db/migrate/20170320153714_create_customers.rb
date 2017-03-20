class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :customer_company_name
      t.string :first_name
      t.string :last_name
      t.string :position_in_company
      t.string :mobile_phone_number
      t.string :office_phone_number
      t.string :email
      t.string :customer_address
      t.string :works_address
      t.integer :needs_surface
      t.integer :nb_of_employees
      t.integer :budget
      t.datetime :starts_at
      t.datetime :ends_at
      t.boolean :customer_startup_style
      t.boolean :customer_classical_style
      t.boolean :customer_modern_style
      t.text :description

      t.timestamps
    end
  end
end
