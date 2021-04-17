#!/usr/bin/env ruby
require  'telegram/bot'
require_relative '../lib/quotes'
require_relative '../lib/jokes'
api_tg = "1699570578:AAH3z46KoCq__FdEKVfsG8dlt-thsdDPZuk"

jokes = [
     {text: '“This policeman came up to me with a pencil and a piece of very thin paper. He said, ‘I want you to trace someone for me."',
     author: ' – Tim Vine'},
     {text: '“Somebody actually complimented me on my driving today. They left a little note, it said ‘Parking Fine.’” ',
     author: ' – Tim Vine'},
     {text: '“My New Year’s resolution is to get in shape. I choose round.”',
     author: ' – Sarah Millican'}
 ]

Telegram::Bot::Client.run(api_tg) do |bot|
     bot.listen do |message|
          case message.text
               when /start/i
                    bot.api.send_message(
                         chat_id:message.chat.id,
                         text:"Welcome to daily Insipration telergram bot, 
                    /start - if you want to start
                    /quote - if you want to get an inspiration
                    /joke - if you want to get a joke
                    /stop - if you want to quit  "          
                    )
               when /quote/i 
                    quote =Quotes.new.a_quote
                    bot.api.send_message(
                         chat_id:message.chat.id,
                         text: (quote['text']).to_s
                    )
               when /joke/i
                    joke = Jokes.new(jokes)
                    bot.api.send_message(
                         chat_id:message.chat.id,
                         text: joke.quote_list.sample[:text]
                    )
                when /stop/i
                    bot.api.send_message(
                         chat_id:message.chat.id,
                         text: "Have a wonderful day")
                    else bot.api.send_message(
                         chat_id:message.caht.id,
                         text: "invalid command, 
                         /start - if you want to start
                         /quote - if you want to get an inspiration
                         /joke - if you want to get a joke
                         /stop - if you want to quit  "      
                    )
           end
     end
end
