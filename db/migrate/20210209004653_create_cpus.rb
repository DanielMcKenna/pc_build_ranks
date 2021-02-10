class CreateCpus < ActiveRecord::Migration[6.1]
  def change
    create_table :cpus do |t|
      t.string :part_type
      t.string :part_number
      t.integer :rank
      t.integer :samples
      t.string :brand
      t.integer :benchmark
      t.string :URL
      t.string :model

      t.timestamps
    end
  end
end
