class Host < ActiveRecord::Base 
    has_many :bookings
    #has_one :booking
    #belongs_to :waiter, through: :booking
end
