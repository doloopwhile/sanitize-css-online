require 'rails_helper'

RSpec.describe "samples/index", type: :view do
  before(:each) do
    assign(:samples, [
      Sample.create!(
        :title => "Title",
        :body => "MyText",
        :published => false
      ),
      Sample.create!(
        :title => "Title",
        :body => "MyText",
        :published => false
      )
    ])
  end

  it "renders a list of samples" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
