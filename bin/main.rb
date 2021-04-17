#!/usr/bin/env ruby
require  'telegram/bot'
# require_relative '../lib/bot'
token = "1699570578:AAH3z46KoCq__FdEKVfsG8dlt-thsdDPZuk"


Telegram::Bot::Client.run(token) do |bot|
     bot.listen do |message|
          case message.text
               when /start/i
                    bot.api.send_message(
                         chat_id:message.chat.id,
                         text:"Welcome to Daily Insipration telergram bot #{message.from.first_name}"
                         )
                when /stop/i
                    bot.api.send_message(
                         chat_id:message.chat.id,
                         text: "hiii")
           end
     end
end
