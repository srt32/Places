require 'spec_helper'

describe "questions/edit" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :email => "MyString",
      :question => "MyText"
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => questions_path(@question), :method => "post" do
      assert_select "input#question_email", :name => "question[email]"
      assert_select "textarea#question_question", :name => "question[question]"
    end
  end
end
