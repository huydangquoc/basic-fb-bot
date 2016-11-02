class BotController < ApplicationController
  skip_before_action  :verify_authenticity_token

  def webhook
    if params['hub.verify_token'] == "huydang_nicachenchalaca"
      render plain: params['hub.challenge'] and return
    else
      render plain: 'error' and return
    end
  end

  def receive_message
    if params[:entry]
      messaging_events = params[:entry][0][:messaging]
      messaging_events.each do |event|
        sender = event[:sender][:id]
        if (text = event[:message] && event[:message][:text])
          BotHelper.send_text_message(sender, "Hi there! You said: #{text}. The Bots")
        end
      end
    end
    render body: nil
  end
end
