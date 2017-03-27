class Match < ApplicationRecord
  MAX_ACCEPTED_COUNT = 3

  belongs_to :customer
  belongs_to :pro
end
