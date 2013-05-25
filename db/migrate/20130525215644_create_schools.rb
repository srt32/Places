class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :location
      t.float :longitude
      t.float :latitude
      t.boolean :gmaps, :default => :true

      t.timestamps
    end
  end
end
