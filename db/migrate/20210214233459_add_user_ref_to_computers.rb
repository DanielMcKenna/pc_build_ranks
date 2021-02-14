class AddUserRefToComputers < ActiveRecord::Migration[6.1]
  def change
    add_reference :computers, :user, null: false, foreign_key: true
  end
end
