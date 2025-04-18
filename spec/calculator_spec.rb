# require 'calculator'
require_relative '../app/models/calculator'

RSpec.describe Calculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(Calculator.new.add("")).to eq(0)
    end
  end
end
