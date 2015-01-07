require 'rails_helper'

RSpec.describe "members/edit", :type => :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :name => "MyString",
      :uname => "MyString",
      :gender => "MyString",
      :contact => 1,
      :email => "MyString",
      :mpass => "MyString",
      :cmpass => "MyString"
    ))
  end

  it "renders the edit member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

      assert_select "input#member_name[name=?]", "member[name]"

      assert_select "input#member_uname[name=?]", "member[uname]"

      assert_select "input#member_gender[name=?]", "member[gender]"

      assert_select "input#member_contact[name=?]", "member[contact]"

      assert_select "input#member_email[name=?]", "member[email]"

      assert_select "input#member_mpass[name=?]", "member[mpass]"

      assert_select "input#member_cmpass[name=?]", "member[cmpass]"
    end
  end
end
