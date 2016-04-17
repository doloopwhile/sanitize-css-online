require 'rails_helper'

RSpec.describe "samples/new", type: :view do
  before(:each) do
    assign(:sample, Sample.new(
      :title => "MyString",
      :body => "MyText",
      :published => false
    ))
  end

  it "renders new sample form" do
    render

    assert_select "form[action=?][method=?]", samples_path, "post" do

      assert_select "input#sample_title[name=?]", "sample[title]"

      assert_select "textarea#sample_body[name=?]", "sample[body]"

      assert_select "input#sample_published[name=?]", "sample[published]"
    end
  end
end
