class AddWebsiteAndTwitterhandleToSchools < ActiveRecord::Migration
  def self.up
  	add_column :schools, :website, :string
  	add_column :schools, :twitter_handle, :string
  end

  def self.down
  	remove_column :schools, :website
  	remove_column :schools, :twitter_handle
  end
end