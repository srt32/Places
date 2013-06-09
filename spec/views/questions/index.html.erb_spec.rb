require 'spec_helper'

describe "questions/index" do
  before(:each) do
    assign(:questions, [
      stub_model(Question,
        :email => "Email",
        :question => "MyText"
      ),
      stub_model(Question,
        :email => "Email",
        :question => "MyText"
      )
    ])
  end

  it "renders a list of questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
