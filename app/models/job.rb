class Job < ApplicationRecord
  belongs_to :client, :class_name => 'User'
  belongs_to :manager, :class_name => 'User'
  belongs_to :origin, :class_name => 'Port'
  belongs_to :destination, :class_name => 'Port'
  has_many :ports
end
