require 'rails_helper'

RSpec.describe "samples/edit", type: :view do
  before(:each) do
    @sample = assign(:sample, Sample.create!(
      :title => "MyString",
      :body => "MyText",
      :published => false
    ))
  end

  it "renders the edit sample form" do
    render

    assert_select "form[action=?][method=?]", sample_path(@sample), "post" do

      assert_select "input#sample_title[name=?]", "sample[title]"

      assert_select "textarea#sample_body[name=?]", "sample[body]"

      assert_select "input#sample_published[name=?]", "sample[published]"
    end
  end
end
