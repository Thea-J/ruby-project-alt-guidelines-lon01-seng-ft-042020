class Host < ActiveRecord::Base 
    has_many :bookings
    belongs_to :restaurant
    #has_one :booking
    #belongs_to :waiter, through: :booking
end
