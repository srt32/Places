require 'spec_helper'

describe "holidays/index" do
  before(:each) do
    assign(:holidays, [
      stub_model(Holiday,
        :school_id => 1,
        :notes => "Notes"
      ),
      stub_model(Holiday,
        :school_id => 1,
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of holidays" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
