class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :trip_id
      t.integer :school_id

      t.timestamps
    end
  end
end
