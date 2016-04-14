require 'calculator'

describe Calculator do
  subject(:calculator){ described_class.new }
  it '#add' do
    expect(calculator.add(1,1)).to eq 2
  end

  it '#subtract' do
    expect(calculator.subtract(1,1)).to eq 0
  end
  
end
