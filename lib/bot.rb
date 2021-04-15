require 'telegram/bot'
class Bot do
     attr_accessor :token
     def initialize
          Telegram::Bot::Client.run(token) do |bot|
               bot.listen do|message|
                    
                    when /start/i
                         bot.api.send_message(chat_id:message.chat.id, text)
     end
end

