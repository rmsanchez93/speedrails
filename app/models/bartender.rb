class Bartender < ApplicationRecord
    belongs_to :speed_rail
    has_secure_password
end
