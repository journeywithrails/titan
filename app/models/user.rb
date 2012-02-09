class User < ActiveRecord::Base
    belongs_to :role
    belongs_to :department

   validates_presence_of :first_name,:last_name, :email

  attr_accessor :confirm_password
  validates_confirmation_of :password


def validate
         errors.add_to_base("Missing password" ) if password_hash.blank?
       end
       
  def self.authenticate(email, password)
          user =User.find_by_email(email)
          if user
          expected_password = encrypted_password(password, user.password_salt)
          if user.password_hash != expected_password
          user = nil
       end
   end
user
end


# 'password' is a virtual attribute
def password
@password
end


def password=(pwd)
@password = pwd
return if pwd.blank?
create_new_salt
self.password_hash = User.encrypted_password(self.password, self.password_salt)
end


private

def self.encrypted_password(password, password_salt)
string_to_hash = password + "wibble" + password_salt # 'wibble' makes it harder to guess
Digest::SHA1.hexdigest(string_to_hash)
end

def create_new_salt
self.password_salt = self.object_id.to_s + rand.to_s
end












end
