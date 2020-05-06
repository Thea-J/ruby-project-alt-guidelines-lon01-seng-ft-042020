class Restaurant < ActiveRecord::Base
    has_many :waiters
    has_many :hosts
    has_many :bookings
end