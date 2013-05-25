require 'spec_helper'

describe "trips/new" do
  before(:each) do
    assign(:trip, stub_model(Trip,
      :user_id => 1,
      :name => "MyString",
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new trip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => trips_path, :method => "post" do
      assert_select "input#trip_user_id", :name => "trip[user_id]"
      assert_select "input#trip_name", :name => "trip[name]"
      assert_select "textarea#trip_notes", :name => "trip[notes]"
    end
  end
end
