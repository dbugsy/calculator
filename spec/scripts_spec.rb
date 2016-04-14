require 'calculator'

describe Calculator do

  subject(:calculator){ described_class.new(printer) }
  let(:printer) do 
  	printer = double("printer")
  	allow(printer).to receive(:pretty_print)
  	printer
  end

  it '#add' do
  	expect(printer).to receive(:pretty_print).with(2)
    calculator.add(1,1)
  end

  it '#subtract' do
    expect(printer).to receive(:pretty_print).with(0)
    calculator.subtract(1,1)
  end

end
