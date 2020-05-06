class Booking < ActiveRecord::Base
    belongs_to :host
    belongs_to :waiter
    belongs_to :restaurant
end