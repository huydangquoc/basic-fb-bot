Rails.application.routes.draw do
  root "bot#webhook"
  post '/' => 'bot#receive_message'
end
