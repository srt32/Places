require 'spec_helper'

describe "schools/new" do
  before(:each) do
    assign(:school, stub_model(School,
      :name => "MyString",
      :location => "MyString",
      :longitude => 1.5,
      :latitude => 1.5,
      :gmaps => false
    ).as_new_record)
  end

  it "renders new school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schools_path, :method => "post" do
      assert_select "input#school_name", :name => "school[name]"
      assert_select "input#school_location", :name => "school[location]"
      assert_select "input#school_longitude", :name => "school[longitude]"
      assert_select "input#school_latitude", :name => "school[latitude]"
      assert_select "input#school_gmaps", :name => "school[gmaps]"
    end
  end
end
