class AddLevelToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :level, :string
  end
end
