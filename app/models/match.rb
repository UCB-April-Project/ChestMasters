class Match < ApplicationRecord

    #converts the stored string to an array
    serialize :board_state, Array

    #belongs_to :user
    #uncomment when the user table is created for device
end
