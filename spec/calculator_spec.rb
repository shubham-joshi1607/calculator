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
      
  end
end
