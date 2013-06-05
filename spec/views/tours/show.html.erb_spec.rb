require 'spec_helper'

describe "tours/show" do
  before(:each) do
    @tour = assign(:tour, stub_model(Tour,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
