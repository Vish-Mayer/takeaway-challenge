require 'text_message'

describe TextMessage do

 let(:text_message){described_class.new}
 let(:client) { double :client }
 let(:message) { "Your order has been confirmed and should arrive at around #{(Time.now + (60 * 30)).strftime("%k:%M")}. Total cost: £12.50" }

 it "sends a text message to confirm the order" do
   message_body = { body: message , from: ENV["FROM"], to: ENV["TO"],  }
   allow(client).to receive_message_chain(:messages, :create).with(message_body)
   expect(Twilio::REST::Client).to receive(:new).with(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']).and_return(client)
   text_message.send('12.50')
 end
end
