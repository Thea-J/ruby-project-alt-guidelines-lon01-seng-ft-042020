class Restaurant < ActiveRecord::Base
    has_many :waiters
    has_many :bookings
    has_many :hosts, through: :bookings
    
end