class Case < ActiveRecord::Base
   belongs_to :patient 
   belongs_to :facility   
   belongs_to :physician 
   
   belongs_to :gross_dictation  
   belongs_to :micro_dictation 
   belongs_to :path_test  
   
   belongs_to :processing_lab_site 
   
   belongs_to :completed_report  
   
   #To_Do's
   #has_one :primary_insurance_id, :class_name => 'Insurance', :conditions => {:id => 1}
   #has_one :secondary_insurance_id, :class_name => 'Insurance', :conditions => {:id => 2}
   #has_one :primary_care_physician_id, :class_name => 'Physician', :conditions => {:id => 1}

end
