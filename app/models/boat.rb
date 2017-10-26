class Boat < ApplicationRecord
  belongs_to :photo
  has_many :ports
  has_many :jobs

end
