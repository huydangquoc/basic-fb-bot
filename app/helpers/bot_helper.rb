module BotHelper

  PAGE_ACCESS_TOKEN="EAAWZCXBOxp7gBAIvIXpjbeZAZBLTBJzVNAfKEZC6ergVYevI6AiPsoZAlKXlGegYh3bpfPZCLZBGCXpAQBK3WcQdTZBExuitZA65tQBvaJCU3pEZCu2LQTXTMQEslDwFA51Yak1xjVDP1CZAeMxtZA0Kp6O3oh7TzZCifnONsyBJHHDPNKQZDZD"

  def self.send_text_message(sender, text)
    body = {
      recipient: {
        id: sender
      },
      message: {
        text: text
      }
    }.to_json
    response = HTTParty.post(
      "https://graph.facebook.com/v2.6/me/messages?access_token=#{PAGE_ACCESS_TOKEN}",
      body: body,
      headers: { 'Content-Type' => 'application/json' }
    )
  end
end
