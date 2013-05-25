class CreateTrips < ActiveRecord::Migration
  def change
    if (!ActiveRecord::Base.connection.tables.include?("trips"))
      create_table :trips do |t|
        t.integer :user_id
        t.string :name
        t.date :date_start
        t.date :date_end
        t.text :notes

        t.timestamps
      end
    end
  end
end
