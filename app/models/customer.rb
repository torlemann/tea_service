class Customer < ApplicationRecord
    validates_presence_of :first_name
    validates_presence_of :last_name
    validates_presence_of :email
    validates_presence_of :street_address
  
    has_many :subscriptions
    has_many :teas, through: :subscriptions
end 
