class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :jobs_as_client, :class_name => 'Job', :foreign_key => 'client_id'
  has_many :jobs_as_manager, :class_name => 'Job', :foreign_key => 'manager_id'
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
