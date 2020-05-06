class Waiter < ActiveRecord::Base 
    belongs_to :restaurant
    has_many :bookings
    has_many :hosts, through: :bookings

   #creates a new Waiter instance, when passed attributes & returns confirmation message
   #This method is functional but it belongs in the restaurant class -  
   def self.hire_waiter(name:name, selling_style:selling_style,capacity:capacity)
       new_waiter = Waiter.create(name: name ,selling_style:selling_style ,capacity:capacity)
       puts "Congrats, you have hired #{w.name}!"
       new_waiter
    end




end