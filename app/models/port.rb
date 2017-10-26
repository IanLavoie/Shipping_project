class Port < ApplicationRecord
  belongs_to :photo
  has_many :jobs_as_origin, :class_name => 'Job', :foreign_key => 'origin_id'
  has_many :jobs_as_destination, :class_name => 'Job', :foreign_key => 'destination_id'
end
