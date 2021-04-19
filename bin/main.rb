# !/usr/bin/env ruby
require 'telegram/bot'
require_relative '../lib/quotes'
require_relative '../lib/jokes'
require 'dotenv'
<<<<<<< HEAD
Dotenv.load
=======
Dotenv.load('.env')

>>>>>>> 8f89051... moved API to .env
Telegram::Bot::Client.run(ENV['API_KEY']) do |bot|
  bot.listen do |message|
    case message.text
    when /start/i
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Welcome to daily Insipration telergram bot,
                    /start - if you want to start
                    /quote - if you want to get an inspiration
                    /joke - if you want to get a joke
                    /stop - if you want to quit  "
      )
    when /quote/i
      quote = Quotes.new.a_quote
      bot.api.send_message(
        chat_id: message.chat.id,
        text: (quote['text']).to_s
      )
    when /joke/i
      joke = Jokes.new
      bot.api.send_message(
        chat_id: message.chat.id,
        text: joke.jokes.sample[:text]
      )
    when /stop/i
      bot.api.send_message(
        chat_id: message.chat.id,
        text: 'Have a wonderful day'
      )
    else
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Invalid command. Valid commands:
                         /start - if you want to start
                         /quote - if you want to get an inspiration
                         /joke - if you want to get a joke
                         /stop - if you want to quit  "
      )
    end
  end
end
