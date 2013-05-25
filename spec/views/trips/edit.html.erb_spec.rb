require 'spec_helper'

describe "trips/edit" do
  before(:each) do
    @trip = assign(:trip, stub_model(Trip,
      :user_id => 1,
      :name => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit trip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => trips_path(@trip), :method => "post" do
      assert_select "input#trip_user_id", :name => "trip[user_id]"
      assert_select "input#trip_name", :name => "trip[name]"
      assert_select "textarea#trip_notes", :name => "trip[notes]"
    end
  end
end
