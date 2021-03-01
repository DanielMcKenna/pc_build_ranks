class Computer < ApplicationRecord
  validates :name, :CPU, :GPU, presence: true
  belongs_to :Cpu, :foreign_key => "CPU" 
  belongs_to :Gpu, :foreign_key => "GPU"

  def cpu_name
    self.Cpu.model
  end

  def gpu_name
    self.Gpu.model
  end
end
