class Job < ApplicationRecord
  belongs_to :client, :class_name => 'User'
  belongs_to :manager, :class_name => 'User'
  belongs_to :origin, :class_name => 'Port'
  belongs_to :destination, :class_name => 'Port'
  has_many :ports
  has_many :job_boats, dependent: :destroy
  has_many :boats, through: :job_boats, dependent: :destroy
end
