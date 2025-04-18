# require 'calculator'
require_relative '../app/models/calculator'

RSpec.describe Calculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(Calculator.new.add("")).to eq(0)
    end

    it 'returns the number itself when one number is provided' do
      expect(Calculator.new.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers' do
      expect(Calculator.new.add("1,2")).to eq(3)
    end
      
    it 'returns the sum of multiple numbers' do
      expect(Calculator.new.add("1,2,3,4")).to eq(10)
    end
      
    it 'handles newlines as delimiters' do
        expect(Calculator.new.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiter' do
        expect(Calculator.new.add("//;\n1;2")).to eq(3)
    end      
      
    it 'raises an error when negative numbers are passed' do
        expect { Calculator.new.add("1,-2,3,-4") }.to raise_error("negative numbers not allowed -2, -4")
    end      
  end
end
