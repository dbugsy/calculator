require 'calculator'

describe Calculator do
  let(:printer){double :printer}
  subject(:calculator){ described_class.new }
  it '#add' do
    allow(printer).to receive(:pretty_print).with(:number) do
      "The answer is: #{number}"
    end
    expect(calculator.add(1,1)).to eq "The answer is: 2"
  end

  it '#subtract' do
    allow(printer).to receive(:pretty_print).with(:number) do
      "The answer is: #{number}"
    end
    expect(calculator.subtract(1,1)).to eq "The answer is: 0"
  end
end
