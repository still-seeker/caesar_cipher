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
end
