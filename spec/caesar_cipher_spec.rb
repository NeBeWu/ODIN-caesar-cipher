require_relative '../lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'shifts a string' do
    expect(caesar_cipher('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 7)).to eq('HIJKLMNOPQRSTUVWXYZABCDEFG')
  end

  it 'shifts left when shift is negative' do
    expect(caesar_cipher('HIJKLMNOPQRSTUVWXYZABCDEFG', -7)).to eq('ABCDEFGHIJKLMNOPQRSTUVWXYZ')

  end

  it 'keeps all characters when shift is 0' do
    expect(caesar_cipher('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 0)).to eq('ABCDEFGHIJKLMNOPQRSTUVWXYZ')
  end

  it 'keeps non-word characters' do
    expect(caesar_cipher('1234567890 ,.|][}{_-+=()!@#$%^&*/;:`~', 10)).to eq('1234567890 ,.|][}{_-+=()!@#$%^&*/;:`~')
  end

  it 'wraps from z to a' do
    expect(caesar_cipher('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 26)).to eq('ABCDEFGHIJKLMNOPQRSTUVWXYZ')
  end

  it 'keeps the same case' do
    expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz', 7)).to eq('hijklmnopqrstuvwxyzabcdefg')
  end
end
