
    
class Jokes
    attr_reader :jokes
    
    def initialize
        @jokes = [{text: '“This policeman came up to me with a pencil and a piece of very thin paper. He said, ‘I want you to trace someone for me."',
            author: ' – Tim Vine'},
        
            {text: '“Somebody actually complimented me on my driving today. They left a little note, it said ‘Parking Fine.’” ',
                   author: ' – Tim Vine'},
        
                {text: '“My New Year’s resolution is to get in shape. I choose round.”',
                author: ' – Sarah Millican'}
            ]
    end

end
joke = Jokes.new
p joke.jokes.sample[:text]


    