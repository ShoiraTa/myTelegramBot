require_relative '../lib/jokes'
require_relative '../lib/quotes'

describe Jokes do
  describe 'sample' do
    let(:joke) { Jokes.new }
    it 'returns one sample from the array of hashes' do
      expect(joke.jokes.sample.length).to eq(2)
    end
  end

  describe 'hash key' do
    let(:joke) { Jokes.new }
    it 'returns only key of the hash' do
      result = joke.jokes.sample[:text]
      expect(result.class).to eq(String)
    end
  end
end
