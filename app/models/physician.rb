class Physician < ActiveRecord::Base
  has_and_belongs_to_many :facilities 
  has_many :cases
  belongs_to :route , :foreign_key => :route_id
  has_many :physician_staff_members
end
