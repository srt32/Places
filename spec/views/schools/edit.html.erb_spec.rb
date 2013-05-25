require 'spec_helper'

describe "schools/edit" do
  before(:each) do
    @school = assign(:school, stub_model(School,
      :name => "MyString",
      :location => "MyString",
      :longitude => 1.5,
      :latitude => 1.5,
      :gmaps => false
    ))
  end

  it "renders the edit school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schools_path(@school), :method => "post" do
      assert_select "input#school_name", :name => "school[name]"
      assert_select "input#school_location", :name => "school[location]"
      assert_select "input#school_longitude", :name => "school[longitude]"
      assert_select "input#school_latitude", :name => "school[latitude]"
      assert_select "input#school_gmaps", :name => "school[gmaps]"
    end
  end
end
