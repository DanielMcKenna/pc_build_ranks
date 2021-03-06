# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "tjaRoxasXIII", email: "tjaroguetech@gmail.com", password: "password")


Computer.create(name: "Bertha", CPU: 444, GPU: 234, user_id: 1)
Computer.create(name: "Mediocre", CPU: 200, GPU: 111, user_id: 1)
Computer.create(name: "The Struggle Bus", CPU: 16, GPU: 688, user_id: 1)
Computer.create(name: "Speed Demon", CPU: 1, GPU: 25, user_id: 1)
Computer.create(name: "Junker", CPU: 1000, GPU: 800, user_id: 1)


require 'csv'

csv_cpu = File.read(Rails.root.join('lib', 'seeds', 'CPU_UserBenchmarks.csv'))
cpu = CSV.parse(csv_cpu, :headers => true, :encoding => 'ISO-8859-1')

csv_gpu = File.read(Rails.root.join('lib', 'seeds', 'GPU_UserBenchmarks.csv'))
gpu = CSV.parse(csv_gpu, :headers => true, :encoding => 'ISO-8859-1')

cpu.each do |row|
  t = Cpu.new
  t.part_type = row['Type']
    t.part_number = row['Part Number']
    t.rank = row['Rank']
    t.samples = row['Samples']
    t.brand = row['Brand']
    t.benchmark = row['Benchmark']
    t.URL = row['URL']
    t.model = row['Model']
    t.save
end

gpu.each do |row|
  t = Gpu.new
  t.part_type = row['Type']
    t.part_number = row['Part Number']
    t.rank = row['Rank']
    t.samples = row['Samples']
    t.brand = row['Brand']
    t.benchmark = row['Benchmark']
    t.URL = row['URL']
    t.model = row['Model']
    t.save
end

puts "There are now #{Cpu.count} processors in the CPU table"
puts "There are now #{Gpu.count} see ya suckers"
