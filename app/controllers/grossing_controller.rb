class GrossingController < ApplicationController
  before_filter :authorize 

  def index
    user=User.find_by_id(session[:user_id])
     if user.role.name == "Pathologist" 
            session[:user_id] = user.id
            redirect_to(params[:url] || { :controller=>'examination',:action => 'index'}) and return
    elsif user.role.name == "Transcriptionist"
            session[:user_id] = user.id
            redirect_to(params[:url] || { :controller=>'processing',:action => 'index'}) and return
    end
    
    
    
    
    end
end
