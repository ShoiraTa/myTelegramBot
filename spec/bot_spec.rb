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
describe Quotes do
  describe 'random quote' do
    let(:quote) { Quotes.new }
    let(:a_quote) { quote.a_quote }
    let(:json) { quote.request }
    it 'should return a Hash' do
      expect(a_quote.class).to eql(Hash)
    end
    it 'returns a non empty JSON object' do
      expect(json.class).to eql(Array)
    end
  end
end
