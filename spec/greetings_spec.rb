require 'spec_helper'

describe Rails::Greetings::Helper do
  before do
    YAML.stub(:load_file).and_return(["Moshi moshi", "Hello"])
    @stub = GreetingsStub.new
  end

  it "should return a greeting" do
    @stub.greetings_tag.should =~ /Moshi moshi|Hello/
  end
end