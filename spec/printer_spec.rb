require 'printer'

describe Printer do
  subject(:printer){ described_class.new }
  it 'produces a pretty string' do
    expect(printer.pretty_print(2)).to eq "The answer is: 2" 
  end
end
