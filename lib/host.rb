class Host < ActiveRecord::Base 
    has_many :bookings
    has_many :restaurants, through: :bookings
    #has_one :booking
    #belongs_to :waiter, through: :booking


    #Find the current booking belonging to a host instance
    #A host can only have one current booking at a time
    def my_current_booking
    Booking.all.find(self.id) 
    end

    #The instance method pay_service will take an interger, convert it into a decimal
    #Update the service_charge attribute for the booking instance for this host 
    def pay_service(number)
    percentage = num / 100.0
    current=self.my_current_booking
    #update the booking with the percentage for service charge
    current.update(service_charge: percentage)   
    end


end
