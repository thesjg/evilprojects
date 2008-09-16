require File.join(File.dirname(__FILE__), '..', '..', 'spec_helper.rb')

describe Admin::Users, "index action" do
  before(:each) do
    dispatch_to(Admin::Users, :index)
  end
end