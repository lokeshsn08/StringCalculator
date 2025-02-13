require_relative 'simple_calculator'  # Adjust based on the file name
require 'rspec'

RSpec.describe SimpleCalculator do
  let(:calculator) { SimpleCalculator.new }
describe "#add" do
    it "returns 0 for an empty string" do
      expect(calculator.add("")).to eq(0)
    end

    it "returns the sum of comma-separated numbers" do
      expect(calculator.add("1,2,3")).to eq(6)
    end

    it "handles newlines as delimiters" do
      expect(calculator.add("4\n5,6")).to eq(15)
    end

    it "supports custom delimiters" do
      expect(calculator.add("//;\n1;2;3")).to eq(6)
    end

    it "raises an error for negative numbers" do
      expect { calculator.add("1,-2,3,-4") }
        .to raise_error("negative numbers not allowed -2,-4")
    end

    it "handles a single number" do
      expect(calculator.add("5")).to eq(5)
    end

    it "handles large numbers" do
      expect(calculator.add("100,200,300")).to eq(600)
    end
  end
 
end
