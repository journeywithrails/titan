class Admin::UsersController < ApplicationController
  before_filter :authorizeadmin, :except => [:login]


layout "admin"
  
#~ active_scaffold :users do |config|    
    #~ config.columns = [:first_name, :last_name, :middle_initial, :cell_phone, :facilities,:route, :physician_staff_members]
    #~ columns[:first_name].label = " First Name"
    #~ columns[:last_name].label = "Last Name"
    #~ columns[:middle_initial].label = "Middle Initial"
    #~ columns[:cell_phone].label = " Cell Phone"
    #~ columns[:facilities].label = "facilities"
    #~ config.columns[:facilities].form_ui = :select
    #~ columns[:route].label = "Router"
     #~ config.columns[:route].form_ui = :select
    #~ columns[:physician_staff_members].label = "Physician Staff Members" 
    #~ config.columns[:physician_staff_members].form_ui = :select   
    #~ config.show.link.label  = "<img src='/images/show.jpg' alt='view record'/>"  
    #~ config.update.link.label = "<img src='/images/edit.jpg'/>" 
    #~ config.delete.link.label  = "<img src='/images/delete.jpg'/>"     
    #~ config.actions = [:list]
    #~ config.list.no_entries_message = "You do not have any Physcian List."
    #~ list.per_page = 15    
  #~ end  
  
  def list   
    @users= User.find(:all)   
  end
  
  def new
  @user= User.new 
  @departments = Department.find(:all)
  @roles = Role.find(:all)
 end
 
  def create_user
  @departments = Department.find(:all)
  @roles = Role.find(:all)
    if request.post?
    @user = User.new(params[:user])
    @user.created_at = Time.now.to_date
    @user.updated_at=  Time.now.to_date
    @user.department_id = params[:user][:department_id]
    @user.role_id = params[:user][:role_id]
       if @user.save
        flash[:notice] ="Created Successfully"
        redirect_to :controller => 'users', :action => 'list' and return
      else
        render :action => :new and return
      end   
    end
  end
  
  
  def show
    @user = User.find(params[:id])
  end
  
  
  
  
  
  def login
     if request.post?
     user = User.authenticate(params[:username], params[:password])    
            if user
                  session[:user_id] = user.id
                  redirect_to(params[:url] || { :controller=>'users',:action => 'list'}) and return
             else
         flash[:login_confirmation] = "Invalid Email ID or Password"
         end       
    end
 render :layout => false and return
  end
  
  
  
   def logout
             session[:user_id] = nil         
            flash[:notice] = "You are signed out."
            redirect_to(:controller => 'users', :action => "login")
   end
  
  
  
  
  
  
  
  
end
