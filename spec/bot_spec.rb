require_relative '../lib/jokes'

describe Jokes do
    describe "sample" do
        it "returns one sample from the array of hashes" do
        joke = Jokes.new
        expect(joke.jokes.sample.length).to eq(2)
        end
    end

    describe "hash key" do
        it "returns only key of the hash" do
        joke =Jokes.new
        result = joke.jokes.sample[:text]
        expect(result.class).to eq(String)
    end
        end
end
describe Quotes do
describe "returns one sample" do
let(:quote) {Quotes.new}
it "returns a sample from the array of hashes"do
expect()

end
end


end