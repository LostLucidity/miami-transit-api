class CreateBusReports < ActiveRecord::Migration
  def change
    create_table :bus_reports do |t|
      t.float :lat
      t.float :long
      t.datetime :bustime
      t.float :speed
      t.string :busid

      t.timestamps null: false
    end
  end
end
