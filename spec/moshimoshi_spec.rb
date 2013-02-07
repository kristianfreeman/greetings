require 'spec_helper'

describe Rails::Moshimoshi::Helper do
  before do
    YAML.stub(:load_file).and_return(["Moshi moshi", "Hello"])
    @stub = MoshimoshiStub.new
  end

  it "should return a greeting" do
    @stub.moshimoshi_tag.should =~ /Moshi moshi|Hello/
  end  
end