class Pro < ApplicationRecord
  has_many :matches
  has_attachments :photos, maximum: 2
  validates :operating_radius, presence: :true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #geocoder
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
