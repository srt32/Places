require 'spec_helper'

describe "tours/edit" do
  before(:each) do
    @tour = assign(:tour, stub_model(Tour,
      :school_id => 1,
      :name => "MyString",
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

  it "renders the edit tour form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tours_path(@tour), :method => "post" do
      assert_select "input#tour_school_id", :name => "tour[school_id]"
      assert_select "input#tour_name", :name => "tour[name]"
      assert_select "textarea#tour_description", :name => "tour[description]"
      assert_select "input#tour_m", :name => "tour[m]"
      assert_select "input#tour_t", :name => "tour[t]"
      assert_select "input#tour_w", :name => "tour[w]"
      assert_select "input#tour_r", :name => "tour[r]"
      assert_select "input#tour_f", :name => "tour[f]"
      assert_select "input#tour_sa", :name => "tour[sa]"
      assert_select "input#tour_su", :name => "tour[su]"
    end
  end
end
