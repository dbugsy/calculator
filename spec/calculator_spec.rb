require 'calculator'

describe Calculator do
  subject(:calculator){ described_class.new }

  it { is_expected.to respond_to(:output).with(1).argument }
  #not sure how to use doubles and mocks here as there doesn't seem to be any direct
  #dependency on another class - except where the output string is actually produced from another class"
  #so I have used the respond to test instead down below, to check the method receives the correct number of arguments
  it { is_expected.to respond_to(:add).with(2).arguments }
  it { is_expected.to respond_to(:subtract).with(2).arguments }

  it '#add' do
    expect(subject.add(1,1)).to eq "The answer is: 2"
  end

  it '#subtract' do
    expect(subject.subtract(1,1)).to eq "The answer is: 0"
  end
end
