class Gpu < ApplicationRecord
    has_many :computers, :foreign_key => "GPU"
end
