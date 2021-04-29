class AddScheduleToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :schedule, :text
    add_column :reservations, :end_time, :datetime
  end
end
