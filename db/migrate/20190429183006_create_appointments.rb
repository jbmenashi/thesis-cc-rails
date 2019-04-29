class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :title
      t.integer :start_time
      t.integer :end_time
      t.references :schedule, foreign_key: true

      t.timestamps
    end
  end
end
