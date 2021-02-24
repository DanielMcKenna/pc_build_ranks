class Computer < ApplicationRecord
  validates :name, :CPU, :GPU, presence: true
  belongs_to :Cpu, :foreign_key => "CPU" 
  belongs_to :Gpu, :foreign_key => "GPU"
end
