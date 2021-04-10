class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.text :content
      t.datetime :start_time
      t.integer :user_id
      t.integer :tweet_id

      t.timestamps
    end
  end
end
