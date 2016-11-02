Rails.application.routes.draw do
  root "bot#webhook"
  post 'bot/webhook' => 'bot#receive_message'
end
