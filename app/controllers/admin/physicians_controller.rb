class Admin::PhysiciansController < ApplicationController
before_filter :authorizeadmin
layout "admin"
 
 active_scaffold :physician do |config|    
    config.columns = [:name, :last_name, :middle_initial, :cell_phone, :facilities,:route, :physician_staff_members]
    columns[:name].label = " First Name"
    columns[:last_name].label = "Last Name"
    columns[:middle_initial].label = "Middle Initial"
    columns[:cell_phone].label = " Cell Phone"
    columns[:facilities].label = "facilities"
    config.columns[:facilities].form_ui = :select
    columns[:route].label = "Router"
     config.columns[:route].form_ui = :select
    columns[:physician_staff_members].label = "Physician Staff Members" 
    config.columns[:physician_staff_members].form_ui = :select   
    config.show.link.label  = "<img src='/images/show.jpg' alt='view record'/>"  
    config.update.link.label = "<img src='/images/edit.jpg'/>" 
    config.delete.link.label  = "<img src='/images/delete.jpg'/>"     
    
    config.list.no_entries_message = "You do not have any Physcian List."
    list.per_page = 15    
  end  
  
end
