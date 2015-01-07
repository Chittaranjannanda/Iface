require 'rails_helper'

RSpec.describe "members/show", :type => :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :name => "Name",
      :uname => "Uname",
      :gender => "Gender",
      :contact => 1,
      :email => "Email",
      :mpass => "Mpass",
      :cmpass => "Cmpass"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Uname/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Mpass/)
    expect(rendered).to match(/Cmpass/)
  end
end
