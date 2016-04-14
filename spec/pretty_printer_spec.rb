require 'calculator'
require 'printer'
require 'pretty_printed_calculator'

describe PrettyPrintedCalculator do
  subject(:calculator) { PrettyPrintedCalculator.new(Calculator.new, Printer.new) }
  it 'prints pretty string' do
    expect(calculator.add(1,1)).to eq "The answer is: 2"
  end
end