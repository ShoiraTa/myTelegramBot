class Jokes
  attr_reader :jokes

  def initialize
    @jokes = [{ text: 'In his job my dad\'s never lost a case. That makes him Gatwick\'s top baggage handler."',
                author: ' – Tim Vine' },
              { text: 'Do I enjoy randomly appointing people to judicial positions? I’ll let you be the judge of that.',
                author: ' – Tim Vine' },
              { text: '“My New Year’s resolution is to get in shape. I choose round.”',
                author: ' – Sarah Millican' },
              { text: 'My wife – it’s difficult to say what she does. She sells seashells on the seashore.',
                author: ' – Milton Jones' },
              { text: 'I told the Inland Revenue I don’t owe them a penny. I live by the seaside',
                author: ' Ken Dodd' }]
  end
end
