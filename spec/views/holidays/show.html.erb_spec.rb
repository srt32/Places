require 'spec_helper'

describe "holidays/show" do
  before(:each) do
    @holiday = assign(:holiday, stub_model(Holiday,
      :school_id => 1,
      :notes => "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Notes/)
  end
end
