class Patient < ActiveRecord::Base
  has_many :cases
end
