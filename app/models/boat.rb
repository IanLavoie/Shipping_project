class Boat < ApplicationRecord
  belongs_to :photo
  has_many :ports
  has_many :job_boats, dependent: :destroy
  has_many :jobs, through: :job_boats, dependent: :destroy

end
