class Computer < ApplicationRecord
  validates :name, :CPU, :GPU, presence: true
end
