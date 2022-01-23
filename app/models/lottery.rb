class Lottery < ApplicationRecord
    has_many :restriction_lottery
    has_many :ticket
    
    belongs_to :type_lottery

end
