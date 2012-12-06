require 'spec_helper'

describe "FizzBuzz" do
  context "fizz?" do
    it "returns true for numbers divisible by 3" do
      3.fizz?.should be_true
    end
    it "returns false for numbers not divisible by 3" do
      5.fizz?.should be_false
    end
  end

  context "buzz?" do
    it "returns true for numbers divisible by 5" do
      5.buzz?.should be_true
    end
    it "returns false for numbers not divisible by 5" do
      3.buzz?.should be_false
    end
  end
  
  context "fizzbuzz?" do
    it "returns true for numbers divisible by 15" do
      15.fizzbuzz?.should be_true
    end
    it "returns false for numbers not divisible by 15" do
      3.fizzbuzz?.should be_false
    end
  end
  
  context "Array" do
    it "should return an array with values fizzbuzzed" do
      [3, 5, 15, 16].fizzbuzz.should == ["fizz", "buzz", "fizzbuzz", 16]
    end
  end
  
  context "Range" do
    it "should return an array with the values fizzbuzzed" do
      (1..15).fizzbuzz.should == [1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizzbuzz"]
    end
  end
  
  context "Output" do
    context "Array" do
      it "should pring out the fizzbuzzy values" do
        $stdout.should_receive(:puts).and_return("fizz", "buzz", "fizzbuzz", 16)
        [3, 5, 15, 16].print_fizzbuzz
      end
    end
    context "Range" do
      it "should pring out the fizzbuzzy values" do
        $stdout.should_receive(:puts).and_return("1", "2", "fizz", "4", "buzz", "fizz", "7", "8", 
          "fizz", "buzz", "11", "fizz", "13", "14", "fizzbuzz")
        (1..15).print_fizzbuzz
      end
    end
  end
end