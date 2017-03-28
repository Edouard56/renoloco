class Customer < ApplicationRecord
  has_many :matches, dependent: :destroy

  after_create :send_confirmation_email
  after_create :compute_matches
  after_update :update_matches, if: :works_address_changed?

  #attachinary
  has_attachments :photos, maximum: 3

  #geocoder
  geocoded_by :works_address
  after_validation :geocode, if: :works_address_changed?

  validates :customer_company_name, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :position_in_company, presence: true
  validates :mobile_phone_number, presence: true
  # validates :office_phone_number, presence: true
  validates :email, presence: true
  validates :customer_address, presence: true
  validates :works_address, presence: true
  validates :needs_surface, presence: true
  validates :nb_of_employees, presence: true
  # validates :budget, presence: true
  # validates :starts_at, presence: true
  # validates :ends_at, presence: true
  # validates :customer_startup_style, presence: true
  # validates :customer_classical_style, presence: true
  # validates :customer_modern_style, presence: true
  # validates :description, presence: true

  def compute_matches
    # TODO: Function that find all renovators around a customer word address within their operating radius
    pros =  []
    Pro.all.each do |pro|
      beta = self.distance_to(pro.address).to_i
      if beta < pro.operating_radius
        pros << pro
      end
    end
    if pros == []
      pros = Pro.near(works_address, 200)
    else
      new_pros = []
      pros.each do |pro|
        if pro.min_operating_surface < needs_surface && needs_surface < pro.max_operating_surface
          new_pros << pro
        end
      end
      new_pros.each do |pro|
        Match.create(pro: pro , customer: self, status: 'waiting')
      end
    end

  end

  def to_s
    customer_company_name
  end

  private

  def send_confirmation_email
    CustomerMailer.confirmation(self).deliver_now
  end

  def update_matches
    matches.destroy_all
    compute_matches
  end
end
