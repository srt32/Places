class CreateTours < ActiveRecord::Migration
  def self.up
    create_table :tours do |t|
      t.integer :school_id
      t.string :name
      t.text :description
      t.time :start_time
      t.time :end_time
      t.boolean :m
      t.boolean :t
      t.boolean :w
      t.boolean :r
      t.boolean :f
      t.boolean :sa
      t.boolean :su

      t.timestamps
    end
  end

  def self.down
    drop_table :tours
  end
end
