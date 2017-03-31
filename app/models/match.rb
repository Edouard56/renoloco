class Match < ApplicationRecord
  MAX_ACCEPTED_COUNT = 3
  MATCHES_STATUS = %(matching waiting pending accepted refused lost)

  belongs_to :customer
  belongs_to :pro
end
