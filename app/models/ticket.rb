class Ticket < ApplicationRecord
    belongs_to :lottery
    #validations
    validates_inclusion_of :number, :in  => 0..100, :message => "El numero debe estar entre 0 y 100"

 

end
