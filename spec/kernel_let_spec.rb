require 'spec_helper'
require 'kernel_let'

describe 'let' do
  it 'should bind name and value pairs in the given hash as block-local methods' do
    expect(let(:foo => 42) { foo }).to eq(42)
    expect(let(:bar => 88) { bar }).to eq(88)
  end

  it 'should not bind name and value pairs not in the given hash as block-local methods' do
    expect {
      let(:foo => 42) { bar }
    }.to raise_error(NameError)
  end

  it 'should raise ArgumentError' do
    expect {
      let(:foo => 42)
    }.to raise_error(ArgumentError)
  end
end
