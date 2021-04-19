require 'json'
require 'net/http'
class Quotes
  def initialize
    @quote_list = request
  end

  def a_quote
    @quote_list = @quote_list.sample
  end

  # private
  def request
    uri = URI('https://type.fit/api/quotes')
    JSON.parse(Net::HTTP.get(uri))
  end
end
