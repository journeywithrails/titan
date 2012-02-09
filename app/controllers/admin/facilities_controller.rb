class Admin::FacilitiesController < ApplicationController
  before_filter :authorizeadmin
  layout "admin"

  active_scaffold :facility do |config|    
    config.columns = [:id,:name, :address, :city, :state, :zip_code, :phone,:fax,:facility_type,:notes,:physicians]
    config.list.columns = [:id,:name, :address, :city, :state, :zip_code, :phone,:fax,:facility_type,:physicians]
    columns[:name].label = "Name"
    columns[:address].label = "Address"
    columns[:city].label = "City"
    columns[:state].label = "State"
    columns[:zip_code].label = "Zip Code"
    columns[:phone].label = "Phone"
    columns[:fax].label = "Fax"   
    columns[:facility_type_id].label = "Facility Type"    
    config.columns[:facility_type].form_ui = :select
    columns[:notes].label = "Notes"  
     config.columns[:physicians].form_ui = :select
    config.show.link.label  = "<img src='/images/show.jpg'/>"  
    config.update.link.label = "<img src='/images/edit.jpg'/>" 
    config.delete.link.label  = "<img src='/images/delete.jpg'/>" 
    config.list.no_entries_message = "You do not have any Facilities List."
    list.per_page = 15    
  end  
  
   
end
