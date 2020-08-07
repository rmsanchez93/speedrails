class SpeedRail < ApplicationRecord
    has_many :speed_rail_products
    has_many :products, through: :speed_rail_products
end
