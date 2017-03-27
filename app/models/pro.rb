class Pro < ApplicationRecord
  has_many :matches
  has_attachments :photos, maximum: 2

  validates :operating_radius, presence: :true
  validates :pro_company_name, presence: :true
  validates :address, presence: :true
  validates :contact_first_name, presence: :true
  validates :contact_last_name, presence: :true
  validates :contact_position, presence: :true
  validates :contact_phone_number, presence: :true
  validates :min_operating_surface, presence: :true
  validates :max_operating_surface, presence: :true







  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #geocoder
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
