require 'rails_helper'

RSpec.describe "members/index", :type => :view do
  before(:each) do
    assign(:members, [
      Member.create!(
        :name => "Name",
        :uname => "Uname",
        :gender => "Gender",
        :contact => 1,
        :email => "Email",
        :mpass => "Mpass",
        :cmpass => "Cmpass"
      ),
      Member.create!(
        :name => "Name",
        :uname => "Uname",
        :gender => "Gender",
        :contact => 1,
        :email => "Email",
        :mpass => "Mpass",
        :cmpass => "Cmpass"
      )
    ])
  end

  it "renders a list of members" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Uname".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Mpass".to_s, :count => 2
    assert_select "tr>td", :text => "Cmpass".to_s, :count => 2
  end
end
