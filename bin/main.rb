# !/usr/bin/env ruby
require 'telegram/bot'
require_relative '../lib/quotes'
require_relative '../lib/jokes'
api_tg = '1699570578:AAH3z46KoCq__FdEKVfsG8dlt-thsdDPZuk'
Telegram::Bot::Client.run(api_tg) do |bot|
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
