class Jokes
    attr_reader :jokes
    
    def initialize
        @jokes = [{text: '“This policeman came up to me with a pencil and a piece of very thin paper. He said, ‘I want you to trace someone for me."',
            author: ' – Tim Vine'},
            {text: '“Somebody actually complimented me on my driving today. They left a little note, it said ‘Parking Fine.’” ',
                author: ' – Tim Vine'},
            {text: '“My New Year’s resolution is to get in shape. I choose round.”',
                author: ' – Sarah Millican'},
            {text: 'My wife – it’s difficult to say what she does. She sells seashells on the seashore.',
                author: ' – Milton Jones'},
            {text: 'I told the Inland Revenue I don’t owe them a penny. I live by the seaside',
                    author:' Ken Dodd'}
            ]
    end

end