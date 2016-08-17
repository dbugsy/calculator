require 'calculator'

describe Calculator do

  let(:printer){ spy :printer }
  subject(:calculator){ described_class.new(printer) }

  it '#add' do
    calculator.add(1,1)
    expect(printer).to have_received(:pretty_print).with(2)
  end

  it '#subtract' do
    calculator.subtract(1,1)
    expect(printer).to have_received(:pretty_print).with(0)
  end
end
