class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :doctor_id
      t.integer :pid
      t.string :description
      t.timestamps
    end
  end
end
