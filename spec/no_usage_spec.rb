require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Thor do
  describe "when usage is not supplied" do
    it "complete usage from source" do
      begin
        require 'get_args'
        load File.join(File.dirname(__FILE__), "fixtures", "no_usage.thor")
        capture(:stdout) { NoUsage.start(["help"]) }.must =~
          /console ENV = "development"\s+# Open console via irb/m
      rescue LoadError
        pending "needed get_args gem"
      end
    end
  end
end
