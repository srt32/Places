require 'spec_helper'

describe "tours/index" do
  before(:each) do
    assign(:tours, [
      stub_model(Tour,
        :school_id => 1,
        :name => "Name",
        :description => "MyText",
        :m => false,
        :t => false,
        :w => false,
        :r => false,
        :f => false,
        :sa => false,
        :su => false
      ),
      stub_model(Tour,
        :school_id => 1,
        :name => "Name",
        :description => "MyText",
        :m => false,
        :t => false,
        :w => false,
        :r => false,
        :f => false,
        :sa => false,
        :su => false
      )
    ])
  end

  it "renders a list of tours" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
