require 'spec_helper'

module Finger
  describe CLI do
    describe ".run" do
      context "when first argument is --github" do
        it "foos" do
          CLI.stub!(:arguments).and_return(["--github", "rails"])
          CLI.run
        end
      end
    end
  end
end
