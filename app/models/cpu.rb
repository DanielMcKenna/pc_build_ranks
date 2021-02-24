class Cpu < ApplicationRecord
    has_many :computers, :foreign_key => "CPU" 
end
