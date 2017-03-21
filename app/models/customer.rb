class Customer < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :customer_company_name, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :position_in_company, presence: true
  validates :mobile_phone_number, presence: true
  validates :office_phone_number, presence: true
  validates :email, presence: true
  validates :customer_address, presence: true
  validates :works_address, presence: true
  validates :needs_surface, presence: true
  validates :nb_of_employees, presence: true
  validates :budget, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  # validates :customer_startup_style, presence: true
  # validates :customer_classical_style, presence: true
  # validates :customer_modern_style, presence: true
  # validates :description, presence: true

end
