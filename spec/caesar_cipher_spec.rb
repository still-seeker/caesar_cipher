# frozen_string_literal: true

require './lib/cipher'

describe '#cipher' do
  # Query method -> returns a value
  # Test that the method returns a value
  it 'works with a small positive  shift' do
    encrypted = cipher('what a string!', 5)
    expect(encrypted).to eq('bmfy f xywnsl!')
  end

  it 'works with large positive shifts' do
    encrypted = cipher('what a string!', 50)
    expect(encrypted).to eq('ufyr y qrpgle!')
  end

  it 'works with small negative shifts' do
    encrypted = cipher('what a string!', -5)
    expect(encrypted).to eq('rcvo v nomdib!')
  end

  it 'works with large negative shifts' do
    encrypted = cipher('what a string!', -50)
    expect(encrypted).to eq('yjcv c uvtkpi!')
  end

  it 'does not raise error with correct arguments' do
    expect { cipher('what a string!', 10) }.not_to raise_error
  end

  it 'raises an argument error when passed one argument' do
    expect { cipher('what a string!') }.to raise_error(ArgumentError)
  end
end
