class Product < ApplicationRecord
    has_many :speed_rail_products
    has_many :speed_rails, through: :speed_rail_products


    def is_at_par?
        # puts "running this command on #{self.name}"
        count = 0
        all_locations = SpeedRailProduct.all.select{|srp| srp.product_id === self.id}
        all_locations.each{|p| count = count + p.qty}
        if count < self.par 
            needed = self.par - count
            puts false
            "ya gotta order some more #{self.name}, you need about #{needed} more"
        else
            puts true
            "we are good on #{self.name}"
        end
        

    end
end
