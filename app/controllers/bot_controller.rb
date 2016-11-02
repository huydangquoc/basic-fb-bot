class BotController < ApplicationController
  def webhook
    if params['hub.verify_token'] == "huydang_nicachenchalaca"
      render plain: params['hub.challenge'] and return
    else
      render plain: 'error' and return
    end
  end

  def receive_message
    debug(params)
  end
end

# Page Access Token
# EAAWZCXBOxp7gBAD1yQO6NAHRgGWEwMDjXSOx3eubUqFsY6uDtUiz1f7cAgje7QTqbJ8tCq1VzVjGHVUpqkxqSsJs0DurCVqsZCYxkGTTXavGOOdc3CRkZBY4blwsI4cTtCjCoRrPYYbj9094E3YFWEtYiiZC582OqrbC3BebmQZDZD
