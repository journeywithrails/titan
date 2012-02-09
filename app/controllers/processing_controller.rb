class ProcessingController < ApplicationController
  before_filter :authorize
  
  def index
    
     user=User.find_by_id(session[:user_id])
     if user.role.name == "Pathologist" 
            session[:user_id] = user.id
            redirect_to(params[:url] || { :controller=>'examination',:action => 'index'}) and return
            
      elsif user.role.name == "Gross Supervisor"
             session[:user_id] = user.id
            redirect_to(params[:url] || { :controller=>'grossing',:action => 'index'}) and return
             
      end
    end
    
  def patient_new
    @patient= Patient.new 
  end
    
  def create_patient
     
       if request.post?
         @patient = Patient.new(params[:patient])
         @patient.created_at = Time.now.to_date
         @patient.updated_at=  Time.now.to_date
        #~ @user.department_id = params[:user][:department_id]
 
          if @patient.save
            flash[:notice] ="Created Successfully"
            redirect_to :controller => 'processing', :action => 'index' and return
           else
            render :action => :patient_new, :layout => false and return
         end   
        end
      
    end
    
    
    
    
end
