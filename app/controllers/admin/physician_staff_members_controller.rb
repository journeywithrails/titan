class Admin::PhysicianStaffMembersController < ApplicationController


before_filter :authorizeadmin
layout "admin"
 
 active_scaffold :physician_staff_member do |config|    
    config.columns = [:first_name, :last_name, :middle_initial, :cell_phone, :facility, :physician]
    columns[:first_name].label = " First Name"
    columns[:last_name].label = "Last Name"
    columns[:middle_initial].label = "Middle Initial"
    columns[:cell_phone].label = " Cell Phone"
    columns[:facility].label = "facilities"
    config.columns[:facility].form_ui = :select    
    columns[:physician].label = "Physician" 
    #~ columns[:physician].includes = "physician" 
    #~ config.columns[:physician].form_ui = :select   
    config.show.link.label  = "<img src='/images/show.jpg' alt='view record'/>"  
    config.update.link.label = "<img src='/images/edit.jpg'/>" 
    config.delete.link.label  = "<img src='/images/delete.jpg'/>"     
    
    config.list.no_entries_message = "You do not have any Physcian Staff Member List."
    list.per_page = 15    
  end  
end
