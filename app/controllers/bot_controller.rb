class BotController < ApplicationController
  def webhook
    if params['hub.verify_token'] == "mytoken"
      render text: params['hub.challenge'] and return
    else
      render text: 'error' and return
    end
  end

  def receive_message
    debug(params)
  end
end

# Token
# EAARSROQbSfIBAHOSqsozPtelFZB7I30jzKMzThbVtZBBa4sCNQzapxebmCDXzwIZC3iZCtgLZBLhKAUGZC1Scsvof56xX0svI0mjpv8d02Ehya3WirRBSqrzMVAqj3fDUIlFncSSUJQuwilavXSnooVCoPm0dARc69kMOGZAqh6rgZDZD
