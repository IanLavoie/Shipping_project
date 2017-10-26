class Address < ApplicationRecord
  has_one :user
  belongs_to :user

end
