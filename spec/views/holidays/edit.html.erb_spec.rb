require 'spec_helper'

describe "holidays/edit" do
  before(:each) do
    @holiday = assign(:holiday, stub_model(Holiday,
      :school_id => 1,
      :notes => "MyString"
    ))
  end

  it "renders the edit holiday form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => holidays_path(@holiday), :method => "post" do
      assert_select "input#holiday_school_id", :name => "holiday[school_id]"
      assert_select "input#holiday_notes", :name => "holiday[notes]"
    end
  end
end
