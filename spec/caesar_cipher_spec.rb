# frozen_string_literal: true

require_relative '../caesar_cipher'

describe '#caesar_cipher' do
  it 'shifts lowercase letters by the key value' do
    expect(caesar_cipher('hello', 3)).to eq('khoor')
  end

  it 'shifts uppercase letters by the key value' do
    expect(caesar_cipher('HELLO', 3)).to eq('KHOOR')
  end

  it 'wraps around the alphabet for lowercase letters' do
    expect(caesar_cipher('xyz', 3)).to eq('abc')
  end

  it 'wraps around the alphabet for uppercase letters' do
    expect(caesar_cipher('XYZ', 3)).to eq('ABC')
  end

  it 'leaves non-alphabetic characters unchanged' do
    expect(caesar_cipher('hello!', 3)).to eq('khoor!')
  end

  it 'handles negative key values' do
    expect(caesar_cipher('khoor', -3)).to eq('hello')
  end

  it 'handles key values greater than 26' do
    expect(caesar_cipher('hello', 30)).to eq('lipps')
  end

  it 'handles empty strings' do
    expect(caesar_cipher('', 5)).to eq('')
  end

  it 'handles keys of 0' do
    expect(caesar_cipher('hello', 0)).to eq('hello')
  end
end
