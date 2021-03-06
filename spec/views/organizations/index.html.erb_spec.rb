require 'spec_helper'

describe "organizations/index" do
  before(:each) do
    assign(:organizations, [
      stub_model(Organization,
        :name => "Name",
        :region => "Region"
      ),
      stub_model(Organization,
        :name => "Name",
        :region => "Region"
      )
    ])
  end

  it "renders a list of organizations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
  end
end
