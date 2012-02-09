class PhysicianStaffMember < ActiveRecord::Base
  belongs_to :physician, :foreign_key => :physician_id
  belongs_to :facility, :foreign_key => :facility_id
end
