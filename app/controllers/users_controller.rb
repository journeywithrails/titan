class UsersController < ApplicationController
   before_filter :authorize, :except => [:login]

  def login
    
    if request.post?
      
     user = User.authenticate(params[:username], params[:password])    
       if user
             
            if user.role.name == "Pathologist" 
            session[:user_id] = user.id
            redirect_to(params[:url] || { :controller=>'examination',:action => 'index'}) and return
            
           elsif user.role.name == "Gross Supervisor"
             session[:user_id] = user.id
            redirect_to(params[:url] || { :controller=>'grossing',:action => 'index'}) and return
             
            elsif user.role.name == "Transcriptionist"
            session[:user_id] = user.id
            redirect_to(params[:url] || { :controller=>'processing',:action => 'index'}) and return
            elsif user.role.name == "Client Service"
            session[:user_id] = user.id
            redirect_to(params[:url] || { :controller=>'clients',:action => 'index'}) and return
            end
         
          
         else 
         flash[:login_confirmation_frontend] = "Invalid Email ID or Password"
         end       
    end
 render :layout => false and return
  end
    
  
  
  def list
  end
  
  
  
  def logout
             session[:user_id] = nil         
            flash[:notice] = "You are signed out."
            redirect_to(:controller => 'users', :action => "login")
   end
  
end
