require 'json'
require 'net/htpp'
class Quotes
def initialize 
@quotes = request
end
def quotes
@quotes= @quote_sample
end

def request
uri = URI('https://type.fit/api/quotes')
JSON.parse(Net::HTTP.get(uri))
end
end