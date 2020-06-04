require 'twilio-ruby'
require 'dotenv'
Dotenv.load('.env')

 class TextMessage

  def initialize
    account_sid = ENV['ACCOUNT_SID']
    auth_token = ENV['AUTH_TOKEN']
    @client = Twilio::REST::Client.new account_sid, auth_token
    @from = ENV['FROM']
    @to = ENV['TO']
  end

  def send(total)
    message = @client.messages.create(
      body: "Your order has been confirmed and should arrive at around #{(Time.now + (60 * 30)).strftime("%k:%M")}. Total cost: £#{total}",
      to: @to,
      from: @from )
  end
end
