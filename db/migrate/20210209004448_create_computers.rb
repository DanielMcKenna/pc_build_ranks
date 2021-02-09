class CreateComputers < ActiveRecord::Migration[6.1]
  def change
    create_table :computers do |t|
      t.string :name
      t.integer :CPU
      t.integer :GPU
      t.text :image

      t.timestamps
    end
  end
end
