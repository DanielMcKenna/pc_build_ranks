class Computer < ApplicationRecord
  has_one :cpu
  has_one :gpu
  validates :name, :CPU, :GPU, presence: true
end
