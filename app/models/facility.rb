class Facility < ActiveRecord::Base
     belongs_to :facility_type , :foreign_key => :facility_type_id
     has_and_belongs_to_many :physicians 
     has_many :cases
end
