require File.dirname(__FILE__) + '/../spec_helper'

describe Taxi do
  it "should be valid" do
    Taxi.new.should be_valid
  end
end
